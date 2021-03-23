# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210323.0.95213"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.95213/kopia-20210323.0.95213-macOS-x64.tar.gz"
    sha256 "d4c6ea1d9a329d9462f3dd9742712b087eb72bb8113b899a7c13e8089a9eaa04"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.95213/kopia-20210323.0.95213-macOS-arm64.tar.gz"
    sha256 "a2a50a74657ce47e06dc2fe03a3490fdd006f058249e8d1ad78b377729d40591"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.95213/kopia-20210323.0.95213-linux-x64.tar.gz"
    sha256 "4a0382ad7e6d536b2a214c1d47ce2a6aeefa76c99dd40aead73d0461a25ed07a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.95213/kopia-20210323.0.95213-linux-arm.tar.gz"
    sha256 "327d90728769b992f0d6f9be358f171f831c217a64d91c53e902d9aee1075706"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.95213/kopia-20210323.0.95213-linux-arm64.tar.gz"
    sha256 "b79281d951ed8d8bc7107659a981eec8ce15346bda3ebc963c272ef5f0b76a4f"
  end

  def install
    bin.install "kopia"
  end
end
