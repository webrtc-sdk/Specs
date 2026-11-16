#!/usr/bin/env python3
"""Bump the Specs repository to a new WebRTC release.

    prepare_release.py --version 150.7871.08 --checksum <sha256 of WebRTC.xcframework.zip> \
        [--repo webrtc-sdk/Specs] [--date 2026-11-16]

Updates WebRTC-SDK.podspec, Package.swift, WebRTC.json, README.md and
CHANGES.md. The binary URL points at this repository's release <version>.
"""

import argparse
import datetime
import json
import os
import re

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


def sub_once(path: str, pattern: str, repl: str, flags=0):
    with open(path) as f:
        text = f.read()
    new, n = re.subn(pattern, repl, text, count=1, flags=flags)
    if n != 1:
        raise SystemExit(f'{os.path.basename(path)}: pattern not found: {pattern}')
    with open(path, 'w', newline='\n') as f:
        f.write(new)


def main():
    p = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    p.add_argument('--version', required=True)
    p.add_argument('--checksum', required=True, help='sha256 of WebRTC.xcframework.zip')
    p.add_argument('--repo', default='webrtc-sdk/Specs')
    p.add_argument('--date', default=datetime.date.today().isoformat())
    args = p.parse_args()

    if not re.fullmatch(r'\d+\.\d+\.\d+', args.version):
        raise SystemExit(f'invalid version {args.version!r}')
    if not re.fullmatch(r'[0-9a-f]{64}', args.checksum):
        raise SystemExit('checksum must be a sha256 hex digest')
    v = args.version
    url = f'https://github.com/{args.repo}/releases/download/{v}/WebRTC.xcframework.zip'
    path = lambda name: os.path.join(ROOT, name)

    sub_once(path('WebRTC-SDK.podspec'), r'(spec\.version\s*=\s*)"[^"]*"', rf'\g<1>"{v}"')
    sub_once(path('WebRTC-SDK.podspec'), r'(spec\.source\s*=\s*\{\s*:http\s*=>\s*)"[^"]*"', rf'\g<1>"{url}"')

    sub_once(path('Package.swift'), r'(url:\s*)"[^"]*WebRTC\.xcframework\.zip"', rf'\g<1>"{url}"')
    sub_once(path('Package.swift'), r'(checksum:\s*)"[0-9a-f]*"', rf'\g<1>"{args.checksum}"')

    # Carthage binary spec: keep earlier versions so pinned consumers resolve.
    with open(path('WebRTC.json')) as f:
        versions = json.load(f)
    versions[v] = url
    with open(path('WebRTC.json'), 'w', newline='\n') as f:
        json.dump(versions, f, indent=4)
        f.write('\n')

    sub_once(path('README.md'), r"(pod 'WebRTC-SDK', '=)[^']*'", rf"\g<1>{v}'")

    milestone, branch, patch = v.split('.')
    entry = f'[{v}] - {args.date}\n\n* Upgrade to WebRTC-SDK M{milestone}.{branch}.{patch}\n\n'
    sub_once(path('CHANGES.md'), r'(-{10,}\n)', rf'\g<1>{entry}')


if __name__ == '__main__':
    main()
