# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230917.0.163711"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.163711/kopia-20230917.0.163711-macOS-x64.tar.gz"
    sha256 "d387abc0e504d2162850e95bb0aa9b37d12f206e4792b85a47594074122d0cce"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.163711/kopia-20230917.0.163711-macOS-arm64.tar.gz"
    sha256 "1332f92812e7471d5d1208aa7d0884f1686fe2d4abd616dc6cd195abe8430901"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.163711/kopia-20230917.0.163711-linux-x64.tar.gz"
    sha256 "ee2e4ad999775ca78ba6288cb49955ebb95798c4980659b5299101eb6b680a00"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.163711/kopia-20230917.0.163711-linux-arm.tar.gz"
    sha256 "835fac284d78780ae6c799082600a80da423e60eb183e24dd16f11a891d989c7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230917.0.163711/kopia-20230917.0.163711-linux-arm64.tar.gz"
    sha256 "887c0e06ce9e5150e714828b4ab48b1993dbb1b0bdfcb2f0c444968c239cc27c"
  end

  def install
    bin.install "kopia"
  end
end
