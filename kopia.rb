# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220614.0.190849"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.190849/kopia-20220614.0.190849-macOS-x64.tar.gz"
    sha256 "6f2035c48ab71a821678fd2c795caa5617e1cf6d0ba732ad9008c57f4a6354ed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.190849/kopia-20220614.0.190849-macOS-arm64.tar.gz"
    sha256 "3a9e1261b4856623e977e3b9ffd03a7760cdcaabb3b0751a28b155ed5268d0c6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.190849/kopia-20220614.0.190849-linux-x64.tar.gz"
    sha256 "643f0380747314c3a0d6559ff4dcfee96e74234a152ecdbeca49070b5f81054f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.190849/kopia-20220614.0.190849-linux-arm.tar.gz"
    sha256 "9838fd4744aa1bbf058437d5dca7b549431e1ab19729145acf603e46718444c6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.190849/kopia-20220614.0.190849-linux-arm64.tar.gz"
    sha256 "499e126c23573fc472c6b9cf89e3eab3868a112a2e7405c24685107540d49cc7"
  end

  def install
    bin.install "kopia"
  end
end
