# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230618.0.122027"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230618.0.122027/kopia-20230618.0.122027-macOS-x64.tar.gz"
    sha256 "0015995de7f2c511d84ee120ee596e6c2c94ba6606aa9faee3b1d5e18d949c58"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230618.0.122027/kopia-20230618.0.122027-macOS-arm64.tar.gz"
    sha256 "4d5ca160754f1f46bfa420dd101ff26eb94b06546f56405fa66abef89beec61e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230618.0.122027/kopia-20230618.0.122027-linux-x64.tar.gz"
    sha256 "d901e564682302c1751eefc0d92829ff1e9530643d206a373974dd13d4b6dd27"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230618.0.122027/kopia-20230618.0.122027-linux-arm.tar.gz"
    sha256 "c8ae8e731a31b9d858c18f4f768f3d635d8dc6af1d6613569db0efc92d0cb7c8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230618.0.122027/kopia-20230618.0.122027-linux-arm64.tar.gz"
    sha256 "34358ad6a8138dee90eaf39f90ed4a7a3486ff12d3a2d2fccfcb6aeb7e94c584"
  end

  def install
    bin.install "kopia"
  end
end
