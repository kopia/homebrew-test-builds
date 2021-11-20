# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211120.0.114303"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.114303/kopia-20211120.0.114303-macOS-x64.tar.gz"
    sha256 "ede21b2ee34007f065a6367c36babe4081938e4a74aa9751ae5283b5764e6d61"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.114303/kopia-20211120.0.114303-macOS-arm64.tar.gz"
    sha256 "17d490d896c6ac1d21626ab3177ca097746b614088a99a64603afd828190ffcd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.114303/kopia-20211120.0.114303-linux-x64.tar.gz"
    sha256 "0aac23d904b0fc686ae5e55bd45eca8513111926b0f75caba60ed01b2c7b38f3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.114303/kopia-20211120.0.114303-linux-arm.tar.gz"
    sha256 "ef25d28132dc3bec0171e13cc28476cda88e5cf048f2d32ae15a8df4354b5402"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.114303/kopia-20211120.0.114303-linux-arm64.tar.gz"
    sha256 "aacee6fd1c5bb598ee1388f03b9e760435f844453dace245d0f7ec8a5167f0f8"
  end

  def install
    bin.install "kopia"
  end
end
