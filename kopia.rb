# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211201.0.202310"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202310/kopia-20211201.0.202310-macOS-x64.tar.gz"
    sha256 "be3f92cac69fcbf40386f732ed7a05e75be542a534c02e58b938c1c8e8843f15"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202310/kopia-20211201.0.202310-macOS-arm64.tar.gz"
    sha256 "26ee0b484e73fdd8bcd12f644a2e17bf995c949db7f1e8f45af2b19c3ffc7238"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202310/kopia-20211201.0.202310-linux-x64.tar.gz"
    sha256 "2230f3001946b73ea316caa7209e7ac7d183ed3414d04aef23881ad55d360db1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202310/kopia-20211201.0.202310-linux-arm.tar.gz"
    sha256 "1bb7b141d8d15411f87229939362dc8dd15ce8351007bfdb59a69b1723d6ce72"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202310/kopia-20211201.0.202310-linux-arm64.tar.gz"
    sha256 "dc3e8df42a9a84b394d91474f1e3492a3164f03be5dcc61e7f76a0b41668786d"
  end

  def install
    bin.install "kopia"
  end
end
