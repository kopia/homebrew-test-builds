# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220122.0.83700"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220122.0.83700/kopia-20220122.0.83700-macOS-x64.tar.gz"
    sha256 "c5e8368e303e1854e84b867bb5b5636fda829c83fdc0e0f4228d75e88e2c105d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220122.0.83700/kopia-20220122.0.83700-macOS-arm64.tar.gz"
    sha256 "9c23c3e0d6010747b9e71e9a0633e82e4d58e8f077a6c41f91304c1300df8967"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220122.0.83700/kopia-20220122.0.83700-linux-x64.tar.gz"
    sha256 "66cb04917e0dee68da922b06177023a9199c541b72a574000da61d9ad774809e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220122.0.83700/kopia-20220122.0.83700-linux-arm.tar.gz"
    sha256 "360ce663e5850c910b4e4746281d926c7f2cdc8d332364f92a72b598465eb669"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220122.0.83700/kopia-20220122.0.83700-linux-arm64.tar.gz"
    sha256 "9409bf7448f7ee5cdb32ffadc84cc1306f77d10cf46cca778bd67cf01da3e4e9"
  end

  def install
    bin.install "kopia"
  end
end
