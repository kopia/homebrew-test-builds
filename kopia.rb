# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211020.0.65837"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.65837/kopia-20211020.0.65837-macOS-x64.tar.gz"
    sha256 "4f36a88b2aa7c08d70656f87dc26477ae1e82361a9b9f4c5b165fe51f9d06318"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.65837/kopia-20211020.0.65837-macOS-arm64.tar.gz"
    sha256 "676722e108010e6c55ab093dcc36f1e1a324c03ae0030a50f292fa72413dcd80"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.65837/kopia-20211020.0.65837-linux-x64.tar.gz"
    sha256 "18f83d597008194d0d7116240ff11f54cb87cf48da24994d6db21c8cf4f2b718"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.65837/kopia-20211020.0.65837-linux-arm.tar.gz"
    sha256 "a7ec5c06239a35e6bb7aea9626f3fae909475a4959aad29d9a9e99c81484edfa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.65837/kopia-20211020.0.65837-linux-arm64.tar.gz"
    sha256 "79c024776eeeab8939fde9c848b47e857f3c22cc68550572fcb934217dd419c1"
  end

  def install
    bin.install "kopia"
  end
end
