# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210916.0.53554"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210916.0.53554/kopia-20210916.0.53554-macOS-x64.tar.gz"
    sha256 "a7fa9ad2016db35cf41229d39fa223fdf878f1954b4dd615bd14d53f53a090e9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210916.0.53554/kopia-20210916.0.53554-macOS-arm64.tar.gz"
    sha256 "e9674e0f2ef512dce61cb3a432fc750deba4056ceca3b0197623fa422f9e60e1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210916.0.53554/kopia-20210916.0.53554-linux-x64.tar.gz"
    sha256 "dacd2304cd268d888b7abe2ba8677a6317bd9985c21aa2fa3877898c63880c04"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210916.0.53554/kopia-20210916.0.53554-linux-arm.tar.gz"
    sha256 "ec30fe98fe058d778b38cc4d5464c3e0cd4f8c0bf23fe12018213ffaca20d93b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210916.0.53554/kopia-20210916.0.53554-linux-arm64.tar.gz"
    sha256 "e052732d79c5f5269434013a277ca1b4556c17373ed90390d135428fa6377fef"
  end

  def install
    bin.install "kopia"
  end
end
