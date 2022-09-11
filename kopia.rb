# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220911.0.71359"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.71359/kopia-20220911.0.71359-macOS-x64.tar.gz"
    sha256 "f7c00659496fdc17fdf5f98def22a8cc0d783443bdab43c3516a5cced0eff435"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.71359/kopia-20220911.0.71359-macOS-arm64.tar.gz"
    sha256 "ad1bb5ffdb978821cd3e48c725d77ec2836b904117d67901ba1a0791eeecef95"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.71359/kopia-20220911.0.71359-linux-x64.tar.gz"
    sha256 "a985257cf6337713c5aa2c2899602efffd2f6692a48f62ab8abcd5e4ca8f2f84"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.71359/kopia-20220911.0.71359-linux-arm.tar.gz"
    sha256 "05baf4bb0ec4a535926d8774f423a633f28e3a677159642d2cd4e6e598507119"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.71359/kopia-20220911.0.71359-linux-arm64.tar.gz"
    sha256 "95e5fbed93d07f3cd04dc9c21b860d731644a748780ec4e4a2357ca0095fa93a"
  end

  def install
    bin.install "kopia"
  end
end
