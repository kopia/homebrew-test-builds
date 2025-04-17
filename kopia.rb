# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250416.0.200242"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250416.0.200242/kopia-20250416.0.200242-macOS-x64.tar.gz"
    sha256 "fbffddc9215b64ac5744faa6bbe7b80049a9e1e27484f73f29734478386e1d72"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250416.0.200242/kopia-20250416.0.200242-macOS-arm64.tar.gz"
    sha256 "bdbb58a1ae7dcea311c49abe065b25407fa0a6d1b02ffc875dadbc2bc36dfb6b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250416.0.200242/kopia-20250416.0.200242-linux-x64.tar.gz"
    sha256 "82f617205cb474359f96638282f66927b7f5e2205d8315d6eef0118b457e5dbc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250416.0.200242/kopia-20250416.0.200242-linux-arm.tar.gz"
    sha256 "303229f676e25a7efd1ba1d4e18726978d501312b22de05de1ef1a4c89d7eeae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250416.0.200242/kopia-20250416.0.200242-linux-arm64.tar.gz"
    sha256 "9b64166a9ad36a0ae20f53da3322169f1c52084c043a9ff2fa3b975328da0da5"
  end

  def install
    bin.install "kopia"
  end
end
