# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220707.0.35411"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220707.0.35411/kopia-20220707.0.35411-macOS-x64.tar.gz"
    sha256 "1452d5444dbebd983178c3d6cbdbf1d1383a50c392b53418eeb041e76e78c4c5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220707.0.35411/kopia-20220707.0.35411-macOS-arm64.tar.gz"
    sha256 "bf01cd108cfa1e43c0c681ba8abe2c1ce37111f4dd5dbf59102b9a6418003588"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220707.0.35411/kopia-20220707.0.35411-linux-x64.tar.gz"
    sha256 "815c237df956a98dbe935f586996759787927d6c5cffc0a473874bf00b191723"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220707.0.35411/kopia-20220707.0.35411-linux-arm.tar.gz"
    sha256 "79832572736b0c0805af2826a0acbe5028e8d5701eb440dd1d0f76a374e32b52"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220707.0.35411/kopia-20220707.0.35411-linux-arm64.tar.gz"
    sha256 "aba59c73d761361b9ee34b214c6150ff2e7c20969770da9c548521864b0256b8"
  end

  def install
    bin.install "kopia"
  end
end
