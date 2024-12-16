# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241210.0.41831"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241210.0.41831/kopia-20241210.0.41831-macOS-x64.tar.gz"
    sha256 "0d082a8f4a70dcbed5a055b15216e8a3f8563f21d860b484efdb86ff8a54f166"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241210.0.41831/kopia-20241210.0.41831-macOS-arm64.tar.gz"
    sha256 "bd8221ae401ba6b32f6270efdd6b23f20be0c7769ad8f584350cacab624fb1d1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241210.0.41831/kopia-20241210.0.41831-linux-x64.tar.gz"
    sha256 "6da1600873cce5db94ca24f0e7af1ed64f44f109f7b8ae22455b2f2fa4fb304f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241210.0.41831/kopia-20241210.0.41831-linux-arm.tar.gz"
    sha256 "321386ac8ce4e1fba0119b609909d95b88ad44a0833a5f69ab11629f68666432"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241210.0.41831/kopia-20241210.0.41831-linux-arm64.tar.gz"
    sha256 "427ea3e9f66eed88f095be498484051ca15786eea814090b5994a47c245737b8"
  end

  def install
    bin.install "kopia"
  end
end
