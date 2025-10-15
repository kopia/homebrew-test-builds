# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251015.0.20458"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251015.0.20458/kopia-20251015.0.20458-macOS-x64.tar.gz"
    sha256 "6ece6e7f0685ab3c98d36a9900bd2b8684fec2897850b827ed01444c8d383836"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251015.0.20458/kopia-20251015.0.20458-macOS-arm64.tar.gz"
    sha256 "7074bcccfbf40f6a114ebfd6412976a7253ba6a794a1fd7222c685ff91f811d1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251015.0.20458/kopia-20251015.0.20458-linux-x64.tar.gz"
    sha256 "1139970c06cb15e7d84e57077f608d1532b7aba4206ccb5cffabff02d1717e84"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251015.0.20458/kopia-20251015.0.20458-linux-arm.tar.gz"
    sha256 "0047e7dc62181aff6e4295a170b53382679e3b86bce8dae9ed220bca230c10d0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251015.0.20458/kopia-20251015.0.20458-linux-arm64.tar.gz"
    sha256 "faaaa172292c77782a9424915bada6151efb57a7cddf4d4b0e703f9882ab0d72"
  end

  def install
    bin.install "kopia"
  end
end
