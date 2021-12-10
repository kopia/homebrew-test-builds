# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211210.0.122850"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211210.0.122850/kopia-20211210.0.122850-macOS-x64.tar.gz"
    sha256 "a564463a5542b377645aa52f6ccc2abd11da6d3a7a4793aae97b229b78ed1505"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211210.0.122850/kopia-20211210.0.122850-macOS-arm64.tar.gz"
    sha256 "389ec02b13a6b5deafdd9c9c348007324fe3c14ddd0ea11c492cb4d2be276df8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211210.0.122850/kopia-20211210.0.122850-linux-x64.tar.gz"
    sha256 "0a2adb30c14e8493a7781e8956de495bd4de27d040298a99bdeb3606a5427098"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211210.0.122850/kopia-20211210.0.122850-linux-arm.tar.gz"
    sha256 "ecf508cb42d40c9bad13dd00207e5a6ffeb06509e73746f1930fa6d9d6a8d126"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211210.0.122850/kopia-20211210.0.122850-linux-arm64.tar.gz"
    sha256 "6e1741ee5da0b042e68895a5d1bfd39d6f1fc122d605e4ca3af41b190958efcd"
  end

  def install
    bin.install "kopia"
  end
end
