# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230605.0.73225"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230605.0.73225/kopia-20230605.0.73225-macOS-x64.tar.gz"
    sha256 "6ec072f15bef435e45098d36121679a6f7949cb5b874493e28e8d8451acc2bd2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230605.0.73225/kopia-20230605.0.73225-macOS-arm64.tar.gz"
    sha256 "ecf7c923e3c33ed936f2be9281097989df3ba5642c44281c3b1e146e90ebf620"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230605.0.73225/kopia-20230605.0.73225-linux-x64.tar.gz"
    sha256 "f8bcd7615eb600f83882300f51f9a332cda55ad291df26926e4702f51c11b8d1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230605.0.73225/kopia-20230605.0.73225-linux-arm.tar.gz"
    sha256 "8c9c0ded3741bc2a6b9bc55d56acccf8736cf7eac79a9c9b39e2c63f1237b47a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230605.0.73225/kopia-20230605.0.73225-linux-arm64.tar.gz"
    sha256 "2391021dbd9d329fc18984b707204d788ef84923c7ff3767802fef3c6b452790"
  end

  def install
    bin.install "kopia"
  end
end
