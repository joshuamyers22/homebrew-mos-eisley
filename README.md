# Mos Eisley Homebrew tap

Official distribution tap owned by `joshuamyers22`.

## macOS preview

The qualified [0.1.0-rc.1 macOS/Linux preview](https://github.com/joshuamyers22/mos-eisley/releases/tag/v0.1.0-rc.1) is available as `mos-eisley-preview`. The initial Homebrew route is qualified on macOS arm64 and x86_64. Linux users should use the qualified standalone or npm route described in the release. WSL2 and native Windows remain outside this preview.

```sh
brew install joshuamyers22/mos-eisley/mos-eisley-preview
mos --version
mos setup --json
```

Use `brew upgrade mos-eisley-preview` for updates and `brew uninstall mos-eisley-preview` to remove the runtime. Credentials, sessions and spending records remain outside the installed runtime. Do not run a package-manager transaction while a Mos session is active.

## Release admission

`Formula/mos-eisley-preview.rb` is copied without URL or checksum changes from the immutable release. Its metadata signature, exact mainline tag/source commit and all four archive digests were verified before admission through this pull request. [Publisher review and public installation verification](https://github.com/joshuamyers22/mos-eisley/pull/302) records the evidence and accepted preview limits.

Future formulas must be generated from an approved immutable release using the corresponding Mos Eisley `tools/package_app_managers.py`, then reviewed and merged through a pull request. A stable formula requires its separate stable release acceptance.

## Publisher and support

Publisher control is documented in [Mos Eisley](https://github.com/joshuamyers22/mos-eisley). Subscription billing, native retries and general reliability remain unverified. Rollback qualification uses a synthetic predecessor. Independently retained encrypted publisher backup/restore remains owner custody work. Report security issues privately to Joshua Myers through an existing private channel; do not put credentials or private source in public issues.
