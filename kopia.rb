# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250303.0.65952"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250303.0.65952/kopia-20250303.0.65952-macOS-x64.tar.gz"
    sha256 "29d340514423b6d1fcc61e19801519dd03950fd564825671e046959692827f01"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250303.0.65952/kopia-20250303.0.65952-macOS-arm64.tar.gz"
    sha256 "deaf366b6952a468d230ceb6ea652ac265a0f95b3012369432c9fe30baeeaca1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250303.0.65952/kopia-20250303.0.65952-linux-x64.tar.gz"
    sha256 "a4be39950fa4f604e8d34984aaf1652e8562c9d74d6cd2bb97fd976ecea10f96"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250303.0.65952/kopia-20250303.0.65952-linux-arm.tar.gz"
    sha256 "581bc2b1e3a2e76c1e1989782de3cbc3610d4073a6d0301a399e8e0f2cf8b1ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250303.0.65952/kopia-20250303.0.65952-linux-arm64.tar.gz"
    sha256 "ded1e12b769f782ada623db9e44c92fe744ded82066b97d65fb99d93adf9d044"
  end

  def install
    bin.install "kopia"
  end
end
