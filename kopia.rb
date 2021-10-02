# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211002.0.100746"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.100746/kopia-20211002.0.100746-macOS-x64.tar.gz"
    sha256 "ef5a4e92ee3657e86a4988203a2061b61a8fcf787c95608b3f9dafefc1198d85"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.100746/kopia-20211002.0.100746-macOS-arm64.tar.gz"
    sha256 "fce4048eef6522ecde72d0547ca26b4e7d0bbd8c5aadf9510e3de0b502f0a5c8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.100746/kopia-20211002.0.100746-linux-x64.tar.gz"
    sha256 "0253cb072c20199cd143ff34a1b88ce045276936c53b9e3770be185c387a06e9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.100746/kopia-20211002.0.100746-linux-arm.tar.gz"
    sha256 "370f1e5c5646160e71ac3f73c79326f86679fff9f4f3aff44999f6fc43fbf2ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.100746/kopia-20211002.0.100746-linux-arm64.tar.gz"
    sha256 "9cd4ef80789b92bc0d0b4a86efb3c76c02d28810c3972a064735e9c340a1bc86"
  end

  def install
    bin.install "kopia"
  end
end
