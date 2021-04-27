# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210426.0.201231"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210426.0.201231/kopia-20210426.0.201231-macOS-x64.tar.gz"
    sha256 "6cd839ca0664229a73cefcd7e61b710e103d2dee91ad5f443059806e4c6950fd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210426.0.201231/kopia-20210426.0.201231-macOS-arm64.tar.gz"
    sha256 "1937d4783cd5118aed3cc5f84d36b81bec5fb64b8ca4ef4c4e2befa179db1821"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210426.0.201231/kopia-20210426.0.201231-linux-x64.tar.gz"
    sha256 "7e2e4f954acd20fbe24cb9e88ece02198b38d9e95e4f8243342340720a686040"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210426.0.201231/kopia-20210426.0.201231-linux-arm.tar.gz"
    sha256 "37c6d0c0852e8dbcef2cbc197cffcbeb568cc7d5873f3734e5152f0ac280aa99"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210426.0.201231/kopia-20210426.0.201231-linux-arm64.tar.gz"
    sha256 "46300ddcfb7bac3094395c7b8ba37bf905702b4b8d84a43ab90384cd2ff5b0e0"
  end

  def install
    bin.install "kopia"
  end
end
