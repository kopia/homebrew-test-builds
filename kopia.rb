# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220211.0.182538"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.182538/kopia-20220211.0.182538-macOS-x64.tar.gz"
    sha256 "8d5defef831915e020b00b7637094ff28e1113cd26b97077e54fba35ac474063"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.182538/kopia-20220211.0.182538-macOS-arm64.tar.gz"
    sha256 "9c143825cad6e1a17f86d2adf946a39ec0cbf4d20b360282afa554761fbdca86"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.182538/kopia-20220211.0.182538-linux-x64.tar.gz"
    sha256 "8e3f4ccc186fa055353cabd91cb425dd5f701c6288b5b538dce708457efac654"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.182538/kopia-20220211.0.182538-linux-arm.tar.gz"
    sha256 "7222e0c119e6cfceac887d1c4e8e8212a201bd114e5dc56c139eb40402e8c7d6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.182538/kopia-20220211.0.182538-linux-arm64.tar.gz"
    sha256 "7799648fef85c98b1de45fc0673a879b3ef41683db821c7fed0d7fa3340e4f5e"
  end

  def install
    bin.install "kopia"
  end
end
