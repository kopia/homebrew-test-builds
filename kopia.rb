# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260617.0.42933"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.42933/kopia-20260617.0.42933-macOS-x64.tar.gz"
    sha256 "5d743cdd32e151b73ecda0c5ddb0474847cf0b33254b19f99bf948c04563518d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.42933/kopia-20260617.0.42933-macOS-arm64.tar.gz"
    sha256 "2b444bb2c218a832bc49a8d15d4e9e4d3a4fdb171f21df90e8161d2c6a9edd9e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.42933/kopia-20260617.0.42933-linux-x64.tar.gz"
    sha256 "6eef48d333b1d3c7fb857203b4d32989c2f6aa0a90d85ac1da9fba4ee691e11d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.42933/kopia-20260617.0.42933-linux-arm.tar.gz"
    sha256 "093e624a5fdff98f6de413aa4f8ed7c282dda92518626a4ea606bc94b797a077"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.42933/kopia-20260617.0.42933-linux-arm64.tar.gz"
    sha256 "bf103254bab3e2ce39cb14f0963e88267bfd3c0bf4277a95729fade968e7e05b"
  end

  def install
    bin.install "kopia"
  end
end
