# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231212.0.40346"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231212.0.40346/kopia-20231212.0.40346-macOS-x64.tar.gz"
    sha256 "c10d9f49cce65744379d0674afc38bbf7258e0fad1845a7e49f064f774952f4f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231212.0.40346/kopia-20231212.0.40346-macOS-arm64.tar.gz"
    sha256 "90f85899c44d3a4b9df4b959591d980579037be2c158d7f67c390f2c7c7e7e3d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231212.0.40346/kopia-20231212.0.40346-linux-x64.tar.gz"
    sha256 "dc2ac88295635326ed84df6969543eeef172cf9a4667d2598f5541098ed74a6b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231212.0.40346/kopia-20231212.0.40346-linux-arm.tar.gz"
    sha256 "9994f5d5682d43891ffcf510bdb55ae3f864f02e412e4163d5071b56cbe51a3f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231212.0.40346/kopia-20231212.0.40346-linux-arm64.tar.gz"
    sha256 "56e7ea58e7355744559e2bd0dfbe2650b43e4c02b8bf8a459256204c4c71f6e2"
  end

  def install
    bin.install "kopia"
  end
end
