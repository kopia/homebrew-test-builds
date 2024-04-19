# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240419.0.152738"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240419.0.152738/kopia-20240419.0.152738-macOS-x64.tar.gz"
    sha256 "e2ab9f88f4d010fdfced34cf6ed8390d6282a44f91870fdb6e43e4a42665604b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240419.0.152738/kopia-20240419.0.152738-macOS-arm64.tar.gz"
    sha256 "cbec6a30675e4cd1378cfcd3ab1598a87f199f1376ee690e7df0d7f5358d012e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240419.0.152738/kopia-20240419.0.152738-linux-x64.tar.gz"
    sha256 "710e6b941d81c6323a2af0e096deb96e4583b7649f7daaed8f71eceda8ad5d4f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240419.0.152738/kopia-20240419.0.152738-linux-arm.tar.gz"
    sha256 "3b8e201c26fbe2c59a6c5670440c96ba00a1853fa2b63168e446b285b5a7c314"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240419.0.152738/kopia-20240419.0.152738-linux-arm64.tar.gz"
    sha256 "b7468ffbb9e7637fa7b2a25070c9e01b47b612f72a5f3f04003375127ac2f7f4"
  end

  def install
    bin.install "kopia"
  end
end
