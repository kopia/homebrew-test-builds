# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260623.0.3052"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260623.0.3052/kopia-20260623.0.3052-macOS-x64.tar.gz"
    sha256 "2c1b6b5d30a52cf09afce44b3b664bb88fa6616d4e3db6151f5bfb1ff5e92869"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260623.0.3052/kopia-20260623.0.3052-macOS-arm64.tar.gz"
    sha256 "f3e85e9bb784ac4e24cc8ca37b375a36cbf296a613cad6084f8b0c6cce2aed07"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260623.0.3052/kopia-20260623.0.3052-linux-x64.tar.gz"
    sha256 "0ab8ca047f6e10079f545a6cf877b9b83ad9c4204e023bcbbd6f829aaf9debb7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260623.0.3052/kopia-20260623.0.3052-linux-arm.tar.gz"
    sha256 "62ac654c1593a98eaf1a1d66958f1f1eb07e80be476aea7218884ac658db6c4e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260623.0.3052/kopia-20260623.0.3052-linux-arm64.tar.gz"
    sha256 "e287eb272e795c61d888230cfed3ecefa98f5e8aff4b9c7b96634d23e9bfecf4"
  end

  def install
    bin.install "kopia"
  end
end
