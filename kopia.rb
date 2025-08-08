# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250808.0.232735"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250808.0.232735/kopia-20250808.0.232735-macOS-x64.tar.gz"
    sha256 "5d384869c21dd4103dcb01a110d96600a0d39494d653d59340acbfab818ccca1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250808.0.232735/kopia-20250808.0.232735-macOS-arm64.tar.gz"
    sha256 "61f870e8733a8d43788975d2204e18dd342bfbaccbcca134a40230f9dd05d6ec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250808.0.232735/kopia-20250808.0.232735-linux-x64.tar.gz"
    sha256 "0eb57d38234c87f6ca221a9cd0de25c8bccae0df3a262f448a3b36cb69e7ada5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250808.0.232735/kopia-20250808.0.232735-linux-arm.tar.gz"
    sha256 "c357aa51b46ad1e79c0c4cfc56ce080664102bdaf8c0fbbd07fe21a5bbae01bd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250808.0.232735/kopia-20250808.0.232735-linux-arm64.tar.gz"
    sha256 "e8a48a73df35a3b4fcf726954d51e6267369fac02ba472d9afadd8f39b57a8f6"
  end

  def install
    bin.install "kopia"
  end
end
