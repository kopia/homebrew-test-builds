# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211102.0.225838"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.225838/kopia-20211102.0.225838-macOS-x64.tar.gz"
    sha256 "7adf265dab95273ff6a6bb1b1257cd30fc19fe110ddaa915f6b74e755fbccb94"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.225838/kopia-20211102.0.225838-macOS-arm64.tar.gz"
    sha256 "33bbfc3ab51a1169ce5cbf43f734f42e8a16d005e4becd339b888f59e8d159f3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.225838/kopia-20211102.0.225838-linux-x64.tar.gz"
    sha256 "e372fed4eedd2c445589bb57aabac0643a9d1a5d49bc1558d108f43221f2c97e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.225838/kopia-20211102.0.225838-linux-arm.tar.gz"
    sha256 "2917cfe4e8952c5d4acced23f7bc023eacb59ddbefec1df4444f8f3ab2cf7ca0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.225838/kopia-20211102.0.225838-linux-arm64.tar.gz"
    sha256 "f2b322c91d20c311a5b3a4e18ebf2a89d9e5610fb3859fd24ea7940a857cf2ee"
  end

  def install
    bin.install "kopia"
  end
end
