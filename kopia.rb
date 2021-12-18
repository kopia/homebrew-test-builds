# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211218.0.140020"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.140020/kopia-20211218.0.140020-macOS-x64.tar.gz"
    sha256 "cf3326969877e5e2b6209921e5c1cbb7a65735d07e5e97b749f6505c36a942da"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.140020/kopia-20211218.0.140020-macOS-arm64.tar.gz"
    sha256 "b72bb4996e2f884b5b9fe985d0f27cd65d3c0a2088fd1f104e76454a675d284f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.140020/kopia-20211218.0.140020-linux-x64.tar.gz"
    sha256 "36c44caf38a3290f8fcb6798cfab43836ef9a22b14017bbb974c7eb7745a4461"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.140020/kopia-20211218.0.140020-linux-arm.tar.gz"
    sha256 "b02d43aa87cce42ef1ee6b859d17d0f6c68f0955579a8c8518780e79a35c4344"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.140020/kopia-20211218.0.140020-linux-arm64.tar.gz"
    sha256 "f6a40a0cbe43f791220aa4a548ad6e5d235cf4f6d2e1f61b59e4071178a3c499"
  end

  def install
    bin.install "kopia"
  end
end
