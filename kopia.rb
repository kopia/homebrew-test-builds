# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250603.0.43741"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250603.0.43741/kopia-20250603.0.43741-macOS-x64.tar.gz"
    sha256 "599a62b192c99a28490a92e04705a6ca311bee9f943284233f97aefcd7875f86"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250603.0.43741/kopia-20250603.0.43741-macOS-arm64.tar.gz"
    sha256 "8e9f3fa3000479d380b6b7e9b76bcbd2e2bfff822d41908d84604e40e1ac96f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250603.0.43741/kopia-20250603.0.43741-linux-x64.tar.gz"
    sha256 "5dcf4b1c7e7a62aa371419a4f09bbfa3168f52b226c7a866f7476a79bc4e483d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250603.0.43741/kopia-20250603.0.43741-linux-arm.tar.gz"
    sha256 "dfa607ae6db24b6af93f47e167d8ae720b9c3ff15522fbbf79b7919f8bc650f6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250603.0.43741/kopia-20250603.0.43741-linux-arm64.tar.gz"
    sha256 "5a771ee52aafa698a61f83a748672e3a03178917c44d1e1c3fddf6421a5d2cfc"
  end

  def install
    bin.install "kopia"
  end
end
