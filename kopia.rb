# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240823.0.180842"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.180842/kopia-20240823.0.180842-macOS-x64.tar.gz"
    sha256 "901cd1fc48cf50433bbea4a7276fa5366ddccdd75f81aae91910460ae7737cc9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.180842/kopia-20240823.0.180842-macOS-arm64.tar.gz"
    sha256 "8d58eeba0fd4637e941a5bdbcebd18a312093d8e5c64d40eeaf1e18ad610ae3a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.180842/kopia-20240823.0.180842-linux-x64.tar.gz"
    sha256 "6947c0a8dc577bed79118acd699113cde9f4f0c6f4a2aadb004c232f23b08a66"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.180842/kopia-20240823.0.180842-linux-arm.tar.gz"
    sha256 "631cb6a8299d2f6c9fec687079800fca80db1878d0131f01a0b0e8bb10df73c1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.180842/kopia-20240823.0.180842-linux-arm64.tar.gz"
    sha256 "4bb41f2b6cb11ee38f13afb1259a2600d7129c28d002ff0af37196f87eba077f"
  end

  def install
    bin.install "kopia"
  end
end
