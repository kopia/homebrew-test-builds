# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220727.0.172257"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220727.0.172257/kopia-20220727.0.172257-macOS-x64.tar.gz"
    sha256 "2854c6f2190cf6981db5eb19d37e17f71ed58ef0ef8f2f2fc51fdb5c1c959e3d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220727.0.172257/kopia-20220727.0.172257-macOS-arm64.tar.gz"
    sha256 "7441e22692eae4195559f239e30dfecf8c46a32a9dfa6aa481d5cbb0d13a0770"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220727.0.172257/kopia-20220727.0.172257-linux-x64.tar.gz"
    sha256 "fe6ff8bfd3ad8f4ab0c6ca25d4aa92877d93b8a0b3dc1609d5589a9c821fc4cb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220727.0.172257/kopia-20220727.0.172257-linux-arm.tar.gz"
    sha256 "88ad001beb5848999bc1cfc1e04d53a3392542e214097b122044913407a3c03b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220727.0.172257/kopia-20220727.0.172257-linux-arm64.tar.gz"
    sha256 "860b3e38acab6bea0abaa96f514b5db9665a237bef9b2ae11d4b66a32deb4e52"
  end

  def install
    bin.install "kopia"
  end
end
