# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210409.0.230329"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.230329/kopia-20210409.0.230329-macOS-x64.tar.gz"
    sha256 "a02a1e02aff4a63db1c38fa6a5a5873bf1565265b40bfff55bc59a1ed18043e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.230329/kopia-20210409.0.230329-macOS-arm64.tar.gz"
    sha256 "992953e4366d631389caf2f8563d69bb6c99d4202c5909bb6ddfe0ad8ff9c9a4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.230329/kopia-20210409.0.230329-linux-x64.tar.gz"
    sha256 "688c1ba79f61af7f08b6c293b5c18a6f6e65d9a7cd672e67d530e389b80ca6db"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.230329/kopia-20210409.0.230329-linux-arm.tar.gz"
    sha256 "9d32e65d9e7b39fbfa0188010b0f786a62a3191b28caa923e10e12793e1e58c6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.230329/kopia-20210409.0.230329-linux-arm64.tar.gz"
    sha256 "aab199fb626573d5b2cc87238739839fb3662c5825f08f35b8a6f1ab31ea0150"
  end

  def install
    bin.install "kopia"
  end
end
