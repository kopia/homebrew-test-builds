# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211017.0.223156"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.223156/kopia-20211017.0.223156-macOS-x64.tar.gz"
    sha256 "adcbfb4516c2968debe71b1733d28fc5dd248785c2324814c9f46e86a1088bec"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.223156/kopia-20211017.0.223156-macOS-arm64.tar.gz"
    sha256 "6d222e9bd8298e0ff8991e9a1597ee4d95fc2c84735fd45438f568c86963939c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.223156/kopia-20211017.0.223156-linux-x64.tar.gz"
    sha256 "edeea78c96d9e48a854d3559ca4ec656bc2a1131668a5ec0750f8e143ded95a3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.223156/kopia-20211017.0.223156-linux-arm.tar.gz"
    sha256 "5312778c40df02a2d8fc6d9c66cf1c6e62240213d9faec8358720bd94cbbf475"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.223156/kopia-20211017.0.223156-linux-arm64.tar.gz"
    sha256 "88ef92125d4a5c9e5e1a8b1e98ee647cac3ad468afbd9d0655e9b68e805f6a94"
  end

  def install
    bin.install "kopia"
  end
end
