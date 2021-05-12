# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210511.0.222628"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210511.0.222628/kopia-20210511.0.222628-macOS-x64.tar.gz"
    sha256 "5c3fce53ed38c41acab5b7f71ba64ccba44876012a47ab10cf4bfb822ead9ba8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210511.0.222628/kopia-20210511.0.222628-macOS-arm64.tar.gz"
    sha256 "f6d430186729f8088267236b5fa4963b09f9131f549b8260f5bea875a527ed2d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210511.0.222628/kopia-20210511.0.222628-linux-x64.tar.gz"
    sha256 "b22312f316f0e302e7fcc60d761a084e4a0c63cf8581ba240813570ceb010f2d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210511.0.222628/kopia-20210511.0.222628-linux-arm.tar.gz"
    sha256 "e663cf6de734f1e87e3ef9ec214d6504910213752df0e48160d9554a2c89d664"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210511.0.222628/kopia-20210511.0.222628-linux-arm64.tar.gz"
    sha256 "5190eeb662072b5517d8a3307f3742a5ac6fc3e08989117959acf3f770c5fc91"
  end

  def install
    bin.install "kopia"
  end
end
