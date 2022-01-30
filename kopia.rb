# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220130.0.100516"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.100516/kopia-20220130.0.100516-macOS-x64.tar.gz"
    sha256 "131861fc9eab90bd5cdc2a89cb8493d02c8a0f85e37cb8abb032600027464cf0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.100516/kopia-20220130.0.100516-macOS-arm64.tar.gz"
    sha256 "d53ad9c90a012167aab0b2bfbd187b81e5d0d61c12582524062d87ab1b307eeb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.100516/kopia-20220130.0.100516-linux-x64.tar.gz"
    sha256 "e4185f823a7b4656cdf51d279f8055422728db236d6c6c4eba7dc090f988965f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.100516/kopia-20220130.0.100516-linux-arm.tar.gz"
    sha256 "56c58fb0056a8ab50127c6d2fb670293acd155885766a628c42b45d5cf02e24e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.100516/kopia-20220130.0.100516-linux-arm64.tar.gz"
    sha256 "d693fb5fc548c5a11a71e965df08da35a34a0ddd7a7fdb19f1559d62e420cfcb"
  end

  def install
    bin.install "kopia"
  end
end
