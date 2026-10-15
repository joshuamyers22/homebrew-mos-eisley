# Mos Eisley Homebrew tap

Official distribution tap owned by `joshuamyers22`. The `mos-eisley-preview` formula supplies the qualified macOS arm64/x86_64 preview from the immutable [0.1.0-rc.2 release](https://github.com/joshuamyers22/mos-eisley/releases/tag/v0.1.0-rc.2).

```sh
brew install joshuamyers22/mos-eisley/mos-eisley-preview
```

## Release admission

Admit a formula only from an owner-accepted immutable Mos Eisley release. Verify `release.json` against the enrolled Ed25519 publisher root, the exact mainline tag and source commit, and all four archive digests before running `tools/package_app_managers.py` in the corresponding Mos Eisley source checkout. Copy its generated preview formula into `Formula/` without changing archive URLs or checksums. Review and merge through a protected pull request.

The generated formula preserves runtime library paths and places the application in `libexec`; credentials, sessions and spending records remain outside the installed runtime. Homebrew owns upgrades and uninstall. Close active Mos sessions before a package-manager transaction. Actual package-manager upgrades require separate qualification; the standalone rc.1/rc.2 upgrade evidence does not qualify a Homebrew upgrade.

## Publisher and support

The [exact tagged qualification and publication workflow](https://github.com/joshuamyers22/mos-eisley/actions/runs/38676738368) records four signed standalone installations, four actual rc.1 upgrade journeys and both macOS generated-formula installation checks. Joshua Myers accepted the exact rc.2 source, signed metadata and 27-asset inventory before publication. This is a macOS preview formula; Linux standalone/npm distributions are separate, stable v1 remains unqualified, WSL2 qualification is postponed and native Windows is unsupported.

Publisher controls and limitations are documented in [Mos Eisley](https://github.com/joshuamyers22/mos-eisley). Subscription billing, native retry exposure, general reliability and independent encrypted publisher backup/restore remain unverified. Report security issues privately to Joshua Myers using an existing private channel; do not put credentials or private source in public issues.
