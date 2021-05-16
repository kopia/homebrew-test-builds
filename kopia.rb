# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210515.0.210500"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.210500/kopia-20210515.0.210500-macOS-x64.tar.gz"
    sha256 "e70ead1d97e25612d044cc3d66a297887fdaecf33219ed26bffb98eafd8fd634"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.210500/kopia-20210515.0.210500-macOS-arm64.tar.gz"
    sha256 "c60434bbc0d8c339dd4c8c1f5b67e1554d07104a9302ca690f9dc8ac55d5d800"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.210500/kopia-20210515.0.210500-linux-x64.tar.gz"
    sha256 "bbf8e98980635276e5f7d76113f32b28590c453f3235a34c85005d647638fdcb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.210500/kopia-20210515.0.210500-linux-arm.tar.gz"
    sha256 "d7900067b4b9b106c845469ba1925e1150c93599d8b64c2b7239e26ad343a5d1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.210500/kopia-20210515.0.210500-linux-arm64.tar.gz"
    sha256 "b6bb357e596a546b11858c3afdc321d0da3311ab463974f9fe0274ec58def2da"
  end

  def install
    bin.install "kopia"
  end
end
