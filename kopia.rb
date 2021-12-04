# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211203.0.164346"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.164346/kopia-20211203.0.164346-macOS-x64.tar.gz"
    sha256 "40436e2a4ebfa08a75607371c8f4515670e661a556fae1c3b4869b8d3df88805"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.164346/kopia-20211203.0.164346-macOS-arm64.tar.gz"
    sha256 "dc5c962fff9589b94559b60fa2607661af83dabeef15c5c2ff183ae13b8bb920"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.164346/kopia-20211203.0.164346-linux-x64.tar.gz"
    sha256 "90fcc9ea2bc790bf25c07b9e790a0bac7e7ed7224e295fca9f506157be21f1cb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.164346/kopia-20211203.0.164346-linux-arm.tar.gz"
    sha256 "b995f31d634f51ff4e60037908df781d70e6548f02d27fe2d7078ee82ff077d4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211203.0.164346/kopia-20211203.0.164346-linux-arm64.tar.gz"
    sha256 "44b5844dfd9931afc49472b2f0193be48b4f5b1892f3891367e15b85e8e216f2"
  end

  def install
    bin.install "kopia"
  end
end
