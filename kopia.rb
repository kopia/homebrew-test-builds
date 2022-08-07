# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220807.0.95614"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220807.0.95614/kopia-20220807.0.95614-macOS-x64.tar.gz"
    sha256 "7118231a91147281002846320f0ec1fe59d798708535c8cc303fdc5b12e1800e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220807.0.95614/kopia-20220807.0.95614-macOS-arm64.tar.gz"
    sha256 "e13e44bf5bf0f85fa98f4913274980d50223d1c917cb66fe7c06be1eec813292"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220807.0.95614/kopia-20220807.0.95614-linux-x64.tar.gz"
    sha256 "c621abd2519fea07b77b46f4a9ba6c5dccc3a60c805a875ede1bc2cb90c5a523"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220807.0.95614/kopia-20220807.0.95614-linux-arm.tar.gz"
    sha256 "4b69f464c8809f7e04b46468d48459ed8d7169b2634caed4525cbeca3ed42846"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220807.0.95614/kopia-20220807.0.95614-linux-arm64.tar.gz"
    sha256 "d833dd4da2705f18434934856a558cc79d0444c5cfe27bc9b19484ba8c7e61e6"
  end

  def install
    bin.install "kopia"
  end
end
