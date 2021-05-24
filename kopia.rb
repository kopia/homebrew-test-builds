# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210523.0.221831"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210523.0.221831/kopia-20210523.0.221831-macOS-x64.tar.gz"
    sha256 "caa1d38106136f7451f6b50db0b7316ffa1116c3a336b2ab51bc822fa21991fd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210523.0.221831/kopia-20210523.0.221831-macOS-arm64.tar.gz"
    sha256 "d82866642efae8e2db1452b1e30296a123c0aaadfb4dc6ce7bc2fd9207107207"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210523.0.221831/kopia-20210523.0.221831-linux-x64.tar.gz"
    sha256 "2faeb536598451ee59c34ea4303a42177efce5bf3e105ab24bd28acde86b7e57"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210523.0.221831/kopia-20210523.0.221831-linux-arm.tar.gz"
    sha256 "da0be1fa7e1d2c7c481ed05a6380d5b13c7ea1e7d5554cb3aa6d160e70fba8b1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210523.0.221831/kopia-20210523.0.221831-linux-arm64.tar.gz"
    sha256 "4918ac2c834d77fd25368e0daeee05e6049682030e0a61ae29d8de40bd27e0d7"
  end

  def install
    bin.install "kopia"
  end
end
