# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.201329"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.201329/kopia-20210717.0.201329-macOS-x64.tar.gz"
    sha256 "33b22d7b3e5705ad7c93e39d37c05d221f3aee6a13482f26f7b3b12f2431eb56"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.201329/kopia-20210717.0.201329-macOS-arm64.tar.gz"
    sha256 "e9bb99432d96db7865e59f70619079c89057f7c7e8b58e1b8dfb8716bcba3cbd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.201329/kopia-20210717.0.201329-linux-x64.tar.gz"
    sha256 "e69c3419ea1d54e92926fda7347175814ab315843a16d5ce0a6b267db62b4d18"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.201329/kopia-20210717.0.201329-linux-arm.tar.gz"
    sha256 "330acf95d063662dc6254ec262b16889d2229d83a7b11d7664cdb5c198dec869"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.201329/kopia-20210717.0.201329-linux-arm64.tar.gz"
    sha256 "36d466fd7fd922f218f11f356a0c8ad6247e423da2aafd7e772019b2e52160a2"
  end

  def install
    bin.install "kopia"
  end
end
