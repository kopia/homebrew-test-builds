# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231124.0.114903"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231124.0.114903/kopia-20231124.0.114903-macOS-x64.tar.gz"
    sha256 "37e3e2cda7312fc389a49d1fa6857e2bf07357547d80b7e7c1193389a0233474"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231124.0.114903/kopia-20231124.0.114903-macOS-arm64.tar.gz"
    sha256 "6eb391d7220d86f5cd05b0dafebd7cac3911b8c91d9c29cc2b0c0dec2776666b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231124.0.114903/kopia-20231124.0.114903-linux-x64.tar.gz"
    sha256 "5628a90f935256f1a6cce740f992b8e2673569e4bc38f58620dfe06be1e240d7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231124.0.114903/kopia-20231124.0.114903-linux-arm.tar.gz"
    sha256 "2db9dd416d674f88ca1c2bad74ed414d66e1e1bb5282d6ca7fddfdae2d2d5c97"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231124.0.114903/kopia-20231124.0.114903-linux-arm64.tar.gz"
    sha256 "118b36ba0a28138e7bb1e59fc125c1a1b84acb8295cc3e688670e6b8393eefd1"
  end

  def install
    bin.install "kopia"
  end
end
