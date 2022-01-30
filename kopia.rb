# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220130.0.110051"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.110051/kopia-20220130.0.110051-macOS-x64.tar.gz"
    sha256 "16314d24efe39c1b928fc1460525bbc0f99b80b66bda031f3dda557b8ac7b366"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.110051/kopia-20220130.0.110051-macOS-arm64.tar.gz"
    sha256 "5d144f6d26941bbb1f6bbe8a5b3fa12504639de5b3bbd028af7b5cbfb5438838"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.110051/kopia-20220130.0.110051-linux-x64.tar.gz"
    sha256 "a1d58e62277798d026ce02ff41869af78cea6f774e6a6958600b12a435fdef74"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.110051/kopia-20220130.0.110051-linux-arm.tar.gz"
    sha256 "d9b905b466bbe3a30b5d06a1b607bc364a4e3e731aee3cedd03b7bac7bce68e4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.110051/kopia-20220130.0.110051-linux-arm64.tar.gz"
    sha256 "0e1e99890c7b76c93174944e6e70c53416119839f0c295a66f9cf08405168e18"
  end

  def install
    bin.install "kopia"
  end
end
