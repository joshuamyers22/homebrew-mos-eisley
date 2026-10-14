# Generated from verified release.json; do not edit checksums by hand.
class MosEisleyPreview < Formula
  desc "Persistent multi-provider coding and review conversation"
  homepage "https://github.com/joshuamyers22/mos-eisley"
  version "0.1.0-rc.1"
  skip_clean "libexec"
  preserve_rpath
  on_macos do
    on_arm do
      url "https://github.com/joshuamyers22/mos-eisley/releases/download/v0.1.0-rc.1/mos-0.1.0-rc.1-macos-aarch64.tar.gz"
      sha256 "ecc9a71b936b67d9e5e8f3f402d9f2c1033e47bbc78e5334bf4e9e3ec78b4161"
    end
    on_intel do
      url "https://github.com/joshuamyers22/mos-eisley/releases/download/v0.1.0-rc.1/mos-0.1.0-rc.1-macos-x86_64.tar.gz"
      sha256 "69604167005b4e8108d3e7632c423c17952f1b41c439258a2040bef5e5ec5b31"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/joshuamyers22/mos-eisley/releases/download/v0.1.0-rc.1/mos-0.1.0-rc.1-linux-aarch64.tar.gz"
      sha256 "56581dc0414154002c57107c14090a38452acec63ab3f19103e1bda3fb964c9c"
    end
    on_intel do
      url "https://github.com/joshuamyers22/mos-eisley/releases/download/v0.1.0-rc.1/mos-0.1.0-rc.1-linux-x86_64.tar.gz"
      sha256 "af01f04a9c5c5c3a1173b71d752f9a6d704d4979e4bef94993c3b5b17f64a2e9"
    end
  end
  def install
    libexec.install Dir["*"]
    (libexec/"installation-origin.json").write '{"origin":"homebrew"}'
    bin.install_symlink libexec/"mos"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/mos --version")
    assert_match "credentials_required_to_install", shell_output("#{bin}/mos setup --json")
  end
end
