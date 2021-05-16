# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210516.0.152331"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.152331/kopia-20210516.0.152331-macOS-x64.tar.gz"
    sha256 "2bdf4e9f3b631dddfe84b5302f1a1b1dd09d062332e8eb8ca05a9420762a5d7a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.152331/kopia-20210516.0.152331-macOS-arm64.tar.gz"
    sha256 "3f143aa35e057d8e41278dec91b976833279de789704d44c8fbbb391931b6ef4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.152331/kopia-20210516.0.152331-linux-x64.tar.gz"
    sha256 "0d2b2544e3e89abc1030c113d02bdb142cc38e0cab86928a3ed03c4c99967e86"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.152331/kopia-20210516.0.152331-linux-arm.tar.gz"
    sha256 "783276b4a3dac2d8a070e8992ad3730346db0789e9ce1d687ce077397e8af220"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.152331/kopia-20210516.0.152331-linux-arm64.tar.gz"
    sha256 "1ea8b770abe7416e2ff6ece48878480cbf65ab00f864da5f7074a1679f45fd14"
  end

  def install
    bin.install "kopia"
  end
end
