# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211104.0.82408"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.82408/kopia-20211104.0.82408-macOS-x64.tar.gz"
    sha256 "39064884016fb3b1790b7945bdae03532852ce7bcf9b6f343a216a9b87e26008"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.82408/kopia-20211104.0.82408-macOS-arm64.tar.gz"
    sha256 "afe10dc74868c6abafd9c234a61b9805230822b0242c2da4a6a4a43932d8e5b9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.82408/kopia-20211104.0.82408-linux-x64.tar.gz"
    sha256 "b8c4ff1b3e6165a4ae05b7f548cbc577aea9547da5304b5e26a39601ceb6169d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.82408/kopia-20211104.0.82408-linux-arm.tar.gz"
    sha256 "318588c4fe374e9224d460e53308f486a600941dc9adb5bc8700aa025f9675ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211104.0.82408/kopia-20211104.0.82408-linux-arm64.tar.gz"
    sha256 "4e89f9cb6a77f8a2c2832310fc172b34c921007cad707b6360a87b3e48e480aa"
  end

  def install
    bin.install "kopia"
  end
end
