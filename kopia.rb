# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220404.0.14353"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220404.0.14353/kopia-20220404.0.14353-macOS-x64.tar.gz"
    sha256 "3137588cea1973941be9b22209363886008a2d5e28c5f587fdc70089925ba8d7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220404.0.14353/kopia-20220404.0.14353-macOS-arm64.tar.gz"
    sha256 "238631fc7b301b574c9a16c437174091ecda394b110ab4f49824bab9b4c85935"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220404.0.14353/kopia-20220404.0.14353-linux-x64.tar.gz"
    sha256 "df28eb4c5929c5271973bf718d1c5a621f7ea23c6beccd4c551c08fc08213057"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220404.0.14353/kopia-20220404.0.14353-linux-arm.tar.gz"
    sha256 "04e367f92f0ea70e963511bad25d394e0c4db557ae457274ddb9a1dac0986612"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220404.0.14353/kopia-20220404.0.14353-linux-arm64.tar.gz"
    sha256 "e0a3a9ee509f1586391893e67adb394c19f6ae3cd35c8532e6642af95a607806"
  end

  def install
    bin.install "kopia"
  end
end
