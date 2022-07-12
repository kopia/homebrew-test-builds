# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220711.0.215137"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220711.0.215137/kopia-20220711.0.215137-macOS-x64.tar.gz"
    sha256 "5900f95b56326c572e0f5d5a61972c667fe64b563df394db3d288525228580d9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220711.0.215137/kopia-20220711.0.215137-macOS-arm64.tar.gz"
    sha256 "f81cdbd36d8d6d099283f183699f274cbf2a1110d3ce09bcd3fe2c82668c21d3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220711.0.215137/kopia-20220711.0.215137-linux-x64.tar.gz"
    sha256 "9e16908f829fe5b00a1fe97cc163c5b5cb14b05b41f84fec7039a95e2599db0e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220711.0.215137/kopia-20220711.0.215137-linux-arm.tar.gz"
    sha256 "512678dc9f34966ba1d640c257eef26b44699cfc1a5060d1de9fa37f86d8dba2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220711.0.215137/kopia-20220711.0.215137-linux-arm64.tar.gz"
    sha256 "d363eebf541d0d50b523aabe75587a86e85b4870009c644b7125c6f94a231798"
  end

  def install
    bin.install "kopia"
  end
end
