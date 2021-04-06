# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.84734"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84734/kopia-20210406.0.84734-macOS-x64.tar.gz"
    sha256 "8f5129a3a333b51c5d41496498396674c9080e6d555966dcac081e550925a0ba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84734/kopia-20210406.0.84734-macOS-arm64.tar.gz"
    sha256 "d7a0614da1090812cc1f01ccc11d13b23d40a7b3909f1855e9d289dc41a10350"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84734/kopia-20210406.0.84734-linux-x64.tar.gz"
    sha256 "e7116cabe754e1a0a310facfbaa7141f0e2b8a18963e1426f13d1cd098b15f6f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84734/kopia-20210406.0.84734-linux-arm.tar.gz"
    sha256 "415b0719d500e637e3441525d47d6ce32318928935cf646ea613e49b4f403e05"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84734/kopia-20210406.0.84734-linux-arm64.tar.gz"
    sha256 "46805b0501a22689a8fd85c436c06564c071ad4ab0ee1cf69c7d7f45e0d21eeb"
  end

  def install
    bin.install "kopia"
  end
end
