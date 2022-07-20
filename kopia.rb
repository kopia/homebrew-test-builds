# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220720.0.45754"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220720.0.45754/kopia-20220720.0.45754-macOS-x64.tar.gz"
    sha256 "c9496c6c579b614e73b0e7557f239dfdb56a1f1cc647c32dc3504201a38643e4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220720.0.45754/kopia-20220720.0.45754-macOS-arm64.tar.gz"
    sha256 "4b8bb0739cc83ae5b6bd8e06feb5645f184f0d5865e9f8dcf7b1516b180dd1dd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220720.0.45754/kopia-20220720.0.45754-linux-x64.tar.gz"
    sha256 "0950c13827e4b7e16b118d197db0119cb4fad84b483917a3ca1d95ae3a72ee61"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220720.0.45754/kopia-20220720.0.45754-linux-arm.tar.gz"
    sha256 "5c81c07693c2a1d6f55c33eaee23f90857415faf5397d92427de368620027ec3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220720.0.45754/kopia-20220720.0.45754-linux-arm64.tar.gz"
    sha256 "d0ad3197c77f62eff46517625210d27a942da715c825a280d9d97a339694cf83"
  end

  def install
    bin.install "kopia"
  end
end
