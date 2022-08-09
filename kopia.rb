# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220809.0.60754"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.60754/kopia-20220809.0.60754-macOS-x64.tar.gz"
    sha256 "6bfbf68443defd738275ab5e73aca541b019460316a662e2095fa447dd7c67dd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.60754/kopia-20220809.0.60754-macOS-arm64.tar.gz"
    sha256 "affcb1b809ac212f5cd54671340657b8a504430f18fe13630a472389b31827ba"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.60754/kopia-20220809.0.60754-linux-x64.tar.gz"
    sha256 "3e23ff8edd27f6a55581f03f22da72c548ae3ea00d49860ad29bb16db0ba0bcb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.60754/kopia-20220809.0.60754-linux-arm.tar.gz"
    sha256 "b10d47befa9d548cb322ac3003d845122120ed069bc7bdee1d52fdd208b80272"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.60754/kopia-20220809.0.60754-linux-arm64.tar.gz"
    sha256 "e9a2192bf30b1a2c53bfd427f31eaac43e6537aca8e9f308630939e76bf62bb1"
  end

  def install
    bin.install "kopia"
  end
end
