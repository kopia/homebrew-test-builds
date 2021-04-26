# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210425.0.201225"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.201225/kopia-20210425.0.201225-macOS-x64.tar.gz"
    sha256 "0d1299fe817c176fa8209f90dd7d6cd20983bc2cdc86aec2ac0cd5ae5291994a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.201225/kopia-20210425.0.201225-macOS-arm64.tar.gz"
    sha256 "d6ce4c11300c8c9bca68057b8d11b9b71ed6c0bc10f446d999f464eb3e33fe78"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.201225/kopia-20210425.0.201225-linux-x64.tar.gz"
    sha256 "eaed7e6d829f4c48ed2951f3198e604c7dc0fbc03bb2bcbb129f1e3bb1d6ef37"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.201225/kopia-20210425.0.201225-linux-arm.tar.gz"
    sha256 "7cd69acbb018654e3df2f880e7050b1eb9a3ed24713cf3338fa571687aab2577"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.201225/kopia-20210425.0.201225-linux-arm64.tar.gz"
    sha256 "9d06d8d38cd67ac2be2d16ebb0264e355348c468acbf303185cc851fab8e144a"
  end

  def install
    bin.install "kopia"
  end
end
