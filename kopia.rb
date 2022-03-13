# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220312.0.231639"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220312.0.231639/kopia-20220312.0.231639-macOS-x64.tar.gz"
    sha256 "7967fc5283a20f8267700b7a0a1c26af4be77292f1bb458ab0c4b8d096358bef"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220312.0.231639/kopia-20220312.0.231639-macOS-arm64.tar.gz"
    sha256 "a71c3bbc4dfdeeb34039fe3552e72f545c298bae09d4e85a3602b94513683180"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220312.0.231639/kopia-20220312.0.231639-linux-x64.tar.gz"
    sha256 "5fafa205416dcb1cb4a8e9544c9b21b979668099fb4b7397d0b69542e3f9365f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220312.0.231639/kopia-20220312.0.231639-linux-arm.tar.gz"
    sha256 "ad0c729f5aa71bbd94d0b1859fcbcfaf4b2a0101e5896dda69b98401c9ec5533"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220312.0.231639/kopia-20220312.0.231639-linux-arm64.tar.gz"
    sha256 "fe218cca56e84eb5c1022896216782d60879852edc8c11f7473003d8c1e14c08"
  end

  def install
    bin.install "kopia"
  end
end
