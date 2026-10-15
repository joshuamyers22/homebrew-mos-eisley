# Generated from verified release.json; do not edit checksums by hand.
class MosEisleyPreview < Formula
  desc "Persistent multi-provider coding and review conversation"
  homepage "https://github.com/joshuamyers22/mos-eisley"
  version "0.1.0-rc.2"
  skip_clean "libexec"
  preserve_rpath
  on_macos do
    on_arm do
      url "https://github.com/joshuamyers22/mos-eisley/releases/download/v0.1.0-rc.2/mos-0.1.0-rc.2-macos-aarch64.tar.gz"
      sha256 "5d977676119054448b2c388a0be66604813a6ec02e7a6339b7c650338eeb82e6"
    end
    on_intel do
      url "https://github.com/joshuamyers22/mos-eisley/releases/download/v0.1.0-rc.2/mos-0.1.0-rc.2-macos-x86_64.tar.gz"
      sha256 "18f4d1f0172e0837441bd9ef0f586bbd5321b85b74fe4c223d3e6fc486af0ee8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/joshuamyers22/mos-eisley/releases/download/v0.1.0-rc.2/mos-0.1.0-rc.2-linux-aarch64.tar.gz"
      sha256 "f225f4c344d651cd905d3a007794d8c06fecad5dc2e8b18a211fc1e116e1f69a"
    end
    on_intel do
      url "https://github.com/joshuamyers22/mos-eisley/releases/download/v0.1.0-rc.2/mos-0.1.0-rc.2-linux-x86_64.tar.gz"
      sha256 "9d0a869983e1f003fb0d2e4f8cbd0980c061663a72823ea740162a7ed521b418"
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
