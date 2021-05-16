# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210515.0.205028"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.205028/kopia-20210515.0.205028-macOS-x64.tar.gz"
    sha256 "2f793d45bffd01fc32648a04868fcb699cce3a97ac88f969ebdd7efcffdedfd6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.205028/kopia-20210515.0.205028-macOS-arm64.tar.gz"
    sha256 "9bc69406a7de8d04d383f356c3c07623576bdb10a437501116b3f54e0d567b0a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.205028/kopia-20210515.0.205028-linux-x64.tar.gz"
    sha256 "f85e789ca4e33813a4c0938f3dd72979841cb1b31e36be11263d0ae6b49adc60"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.205028/kopia-20210515.0.205028-linux-arm.tar.gz"
    sha256 "0e45f620696079323b5108d9ae5d60b331bd7ac98edae7abf5b6b88440d41877"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.205028/kopia-20210515.0.205028-linux-arm64.tar.gz"
    sha256 "edf1c286ecfe21ae64fc4fedc88415a0890bc959096548166302f898744d79aa"
  end

  def install
    bin.install "kopia"
  end
end
