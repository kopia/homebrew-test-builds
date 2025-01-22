# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250121.0.184213"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250121.0.184213/kopia-20250121.0.184213-macOS-x64.tar.gz"
    sha256 "06d10ee20a3df5d463ca039ec7c354f4178070f4002a54f76eb9e9a293815fef"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250121.0.184213/kopia-20250121.0.184213-macOS-arm64.tar.gz"
    sha256 "664b122c579df602bf67b50433b3d5305d02b764dc2c5b6bcbb04d3d7d9cb98f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250121.0.184213/kopia-20250121.0.184213-linux-x64.tar.gz"
    sha256 "fead121a5e3c8aca91a20e03ecca12a29f66f388a758fecc749c8aa0801ca7ca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250121.0.184213/kopia-20250121.0.184213-linux-arm.tar.gz"
    sha256 "935d57f54dabc1bf36590eb13616444646e6dfece193ab81eff89cda194de401"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250121.0.184213/kopia-20250121.0.184213-linux-arm64.tar.gz"
    sha256 "470615d1caf8757b82a1e73c59e0f5ebb48aeaa9e98b1ae18486c5a5a0ffbfe8"
  end

  def install
    bin.install "kopia"
  end
end
