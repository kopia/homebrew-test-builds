# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260505.0.11949"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260505.0.11949/kopia-20260505.0.11949-macOS-x64.tar.gz"
    sha256 "08892280b31486fbd5264bcfee5ede9482b735065f8d02337c795dfd0c1ce0ae"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260505.0.11949/kopia-20260505.0.11949-macOS-arm64.tar.gz"
    sha256 "5d6c8374cfa3c9339185e18bdb0868910fc43d8fbf4ded7d1f7d8d5e5985de2e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260505.0.11949/kopia-20260505.0.11949-linux-x64.tar.gz"
    sha256 "6dff52532db45cb31daca3226b4af5c5b0d2d81f4db6ba2e2e4c3046a2eb78f1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260505.0.11949/kopia-20260505.0.11949-linux-arm.tar.gz"
    sha256 "c1beec9018af65c39052b80d52ab596bca42df65ad79f7872cb0606ab7859e2f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260505.0.11949/kopia-20260505.0.11949-linux-arm64.tar.gz"
    sha256 "3db8f6bfb3424dcc70a31b02463d2432529655b3b712449331a121483633a6a7"
  end

  def install
    bin.install "kopia"
  end
end
