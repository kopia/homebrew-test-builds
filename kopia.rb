# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210718.0.91540"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.91540/kopia-20210718.0.91540-macOS-x64.tar.gz"
    sha256 "98ff6c095ce3003f1279741bb72caa36c5569d19aa659c899d16400d11b4bcab"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.91540/kopia-20210718.0.91540-macOS-arm64.tar.gz"
    sha256 "d855f915afc2bcc196249d60ade7c161bf7e59402b5a515a6bf40da2fe7dffc1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.91540/kopia-20210718.0.91540-linux-x64.tar.gz"
    sha256 "e097663faecc07d83275f5f1681ab7cc9023f1a7f454ddbffd8d366ede11bd96"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.91540/kopia-20210718.0.91540-linux-arm.tar.gz"
    sha256 "bb536dfac4022987aeb9b373c2d283f8830eda2874352d3a6dc8e7f92907ab7b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.91540/kopia-20210718.0.91540-linux-arm64.tar.gz"
    sha256 "a8a73747935c703ee05a854b20a8c05656fb47ea7614cc7e4784b472b4463d85"
  end

  def install
    bin.install "kopia"
  end
end
