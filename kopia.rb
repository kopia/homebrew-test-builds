# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230919.0.2701"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.2701/kopia-20230919.0.2701-macOS-x64.tar.gz"
    sha256 "3609f4aeb0b80c4e7a9f9e8d7d125a9b675b618d507a62e95b613df5e51984be"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.2701/kopia-20230919.0.2701-macOS-arm64.tar.gz"
    sha256 "6a1a46c1af77594b9775ba16a646dafbfc8e4d30af521b22d5bc17aaf984c57a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.2701/kopia-20230919.0.2701-linux-x64.tar.gz"
    sha256 "2f89a98df00d9d570bd030a0e91f33c6d0d12631f382a0e1b29a9d7bdc3a4533"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.2701/kopia-20230919.0.2701-linux-arm.tar.gz"
    sha256 "1e1699cd324f0946810da080a6c5e342d7760c4e65a4670950dc3cca0d7d76cc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.2701/kopia-20230919.0.2701-linux-arm64.tar.gz"
    sha256 "4fba85518604af512f4b03ba3d30f7e43672d9f087e71b62594b9d2b43457b60"
  end

  def install
    bin.install "kopia"
  end
end
