# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251112.0.46"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.46/kopia-20251112.0.46-macOS-x64.tar.gz"
    sha256 "c7de0f827cbd03f390e30c8a3e85e5da4e28ed7f017f17c5b54a6c231e02f5b8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.46/kopia-20251112.0.46-macOS-arm64.tar.gz"
    sha256 "61210be37308556177c6dd98114730b7e69d39a3e7c545cd0e204b33d8a52e8c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.46/kopia-20251112.0.46-linux-x64.tar.gz"
    sha256 "2008847cbcf5699e5bad9a51e6bd1568c119b0a4e0582072720ced7ce801af55"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.46/kopia-20251112.0.46-linux-arm.tar.gz"
    sha256 "a2f75f97a20bae754bdef0ab6985a0037ef8503adb34f88490bb80d6bec7b39d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251112.0.46/kopia-20251112.0.46-linux-arm64.tar.gz"
    sha256 "0dd8af41ffefc141e68dc2ce88620ac3d755e48f83b5fea7177e66f13e2ff894"
  end

  def install
    bin.install "kopia"
  end
end
