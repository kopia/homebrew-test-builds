# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210908.0.125607"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.125607/kopia-20210908.0.125607-macOS-x64.tar.gz"
    sha256 "0815f51a0ee4bd9b1d9a5505bacd3592c2ca46cdbfdca1f89820cbc81dbea8e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.125607/kopia-20210908.0.125607-macOS-arm64.tar.gz"
    sha256 "f542ad0512a74a355db2576baada3556fee198684479cebc02056d37be12362f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.125607/kopia-20210908.0.125607-linux-x64.tar.gz"
    sha256 "181ee6c2b2228992d75d840dea553bffea8aaf36142f6e9fc439ff85ec61990f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.125607/kopia-20210908.0.125607-linux-arm.tar.gz"
    sha256 "944001bfa6367e7834784de263ae6a88dc37ecd706ff74afe3b4fe1629dbe363"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.125607/kopia-20210908.0.125607-linux-arm64.tar.gz"
    sha256 "09f5924eb10380482538aae86832fc37913500d0406dbe6bc58c86e762d8c84b"
  end

  def install
    bin.install "kopia"
  end
end
