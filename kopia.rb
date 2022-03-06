# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220306.0.120236"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.120236/kopia-20220306.0.120236-macOS-x64.tar.gz"
    sha256 "6dd72c4f6f1b591f0cf2d428215f6665d97deacaea371d5805a8bd75c33b30c2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.120236/kopia-20220306.0.120236-macOS-arm64.tar.gz"
    sha256 "e256584f26460768db688864d939b0ca34f11ee6d4164b89758d421208cedff3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.120236/kopia-20220306.0.120236-linux-x64.tar.gz"
    sha256 "64406324fa9c1542f79ce8d0fdd85bba146a0bbe4331b01e1a3ece47011ff54f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.120236/kopia-20220306.0.120236-linux-arm.tar.gz"
    sha256 "ad7cdebdf7ded7e147d90cbf192ad264c8392be710da05d337650ce0c0c0365c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.120236/kopia-20220306.0.120236-linux-arm64.tar.gz"
    sha256 "035c62952904a995c69860b0e6fbe56bac741921f7041bbff0877559b8dff066"
  end

  def install
    bin.install "kopia"
  end
end
