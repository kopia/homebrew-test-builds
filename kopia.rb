# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210405.0.214122"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.214122/kopia-20210405.0.214122-macOS-x64.tar.gz"
    sha256 "8d5d2ab8f9225fb358a4880f0ca408ef9a6aeb237507e60f192f5f6322e4ad0c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.214122/kopia-20210405.0.214122-macOS-arm64.tar.gz"
    sha256 "b8046da91fccfd1595f1dd0d36381509600592effc5fb2f0fdd0a9ebbba141db"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.214122/kopia-20210405.0.214122-linux-x64.tar.gz"
    sha256 "0396c68218922255b7a8b562af9ef3f13e496544fd003b2c90d7280a43fc9fcd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.214122/kopia-20210405.0.214122-linux-arm.tar.gz"
    sha256 "69d13a0acea4aeed17398af4832c495608429bce43668f35d6f60d073516b97d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.214122/kopia-20210405.0.214122-linux-arm64.tar.gz"
    sha256 "8c3f03e477a1290840d1d7dc846800a34a4c17e87bd39be9502666d89a45ad43"
  end

  def install
    bin.install "kopia"
  end
end
