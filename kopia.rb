# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220315.0.235704"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220315.0.235704/kopia-20220315.0.235704-macOS-x64.tar.gz"
    sha256 "64fbde55dd0f9bf078b886e5e6dbd9852fb3a2c931418301fb2bfeb5afa4a63a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220315.0.235704/kopia-20220315.0.235704-macOS-arm64.tar.gz"
    sha256 "4833f2dfb79f03de995d82099705779eab8407c605b323862abe25c833824aba"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220315.0.235704/kopia-20220315.0.235704-linux-x64.tar.gz"
    sha256 "eb69a91ccd395ca7695101914af73d9719ab6308eaab6d0368fba64c5a9b4be1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220315.0.235704/kopia-20220315.0.235704-linux-arm.tar.gz"
    sha256 "36e4f2f9692798ebdb054f266e1447225a8068f5739e23922f563837810590da"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220315.0.235704/kopia-20220315.0.235704-linux-arm64.tar.gz"
    sha256 "3784b84ae6d1a5a1977114cfcee94b01f35860ccc782d0b146f141571893b910"
  end

  def install
    bin.install "kopia"
  end
end
