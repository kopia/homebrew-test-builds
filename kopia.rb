# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210908.0.202623"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.202623/kopia-20210908.0.202623-macOS-x64.tar.gz"
    sha256 "db712a50cf6253667964d815fca85dd92c1d04ee6d03de4ac81ac7f774115af6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.202623/kopia-20210908.0.202623-macOS-arm64.tar.gz"
    sha256 "fba429f1de96e8d90131cad5b7e96255066821124c68dc7da294f42d6fd9f3bf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.202623/kopia-20210908.0.202623-linux-x64.tar.gz"
    sha256 "6760cdd2149c6d49e1cc6f02ab82bc0717e37b9576fee822c2467a9b1b173d24"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.202623/kopia-20210908.0.202623-linux-arm.tar.gz"
    sha256 "ba27910810032194e0d9cf42f5ab8040fbb9c3530c2e2b3288998480f6f0efc7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.202623/kopia-20210908.0.202623-linux-arm64.tar.gz"
    sha256 "e0256ccb2f73d0ab499d9cabec166a7df9d71af07fbe650a1f33611edc6fed37"
  end

  def install
    bin.install "kopia"
  end
end
