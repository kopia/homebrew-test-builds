# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241104.0.165421"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241104.0.165421/kopia-20241104.0.165421-macOS-x64.tar.gz"
    sha256 "29d38b330ce2dd0fc0fc2f7402abb5ea9c4adb1972be5a09d81360a29c9122bd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241104.0.165421/kopia-20241104.0.165421-macOS-arm64.tar.gz"
    sha256 "5fd943e36054418ce0df38682a069c5b8b0cefbbfaae458a748f9eedb454a937"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241104.0.165421/kopia-20241104.0.165421-linux-x64.tar.gz"
    sha256 "7906aa436f0eb45cb92e4f49e85ad513f845ec193e679a672d22f31aeffce441"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241104.0.165421/kopia-20241104.0.165421-linux-arm.tar.gz"
    sha256 "27b5971effdd358bc961992aba8fda3f0d2684550e95c119d1908d7a200a3a97"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241104.0.165421/kopia-20241104.0.165421-linux-arm64.tar.gz"
    sha256 "19ef0ded923e595dcbc3dc283fb0f1141ea424e32ff4a8c2729c9d685799ed58"
  end

  def install
    bin.install "kopia"
  end
end
