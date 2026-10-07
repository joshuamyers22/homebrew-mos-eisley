# Mos Eisley Homebrew tap

Official distribution tap owned by `joshuamyers22`. The tap is initialized for release preparation. No installable formula is published yet.

## Release admission

A formula may be added only from an approved immutable Mos Eisley release. Verify `release.json` against the enrolled Ed25519 publisher root, the exact mainline tag and source commit, and all four archive digests before running `tools/package_app_managers.py` in the corresponding Mos Eisley source checkout. Copy its generated `mos-eisley.rb` into `Formula/` without changing archive URLs or checksums. Review and merge through a pull request.

The generated formula preserves runtime library paths and places the application in `libexec`; credentials, sessions and spending records remain outside the installed runtime. Homebrew owns upgrades and uninstall. A package-manager transaction must not run while a Mos session is active.

When a verified formula exists, the intended command is `brew install joshuamyers22/mos-eisley/mos-eisley`. It is not available before that release is admitted.

## Publisher and support

Publisher control and release preparation are documented in [Mos Eisley](https://github.com/joshuamyers22/mos-eisley). WSL2, subscription inference and native Windows support require their separate qualification gates. Report security issues privately to Joshua Myers using an existing private channel; do not put credentials or private source in public issues.
