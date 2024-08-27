# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240827.0.94258"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240827.0.94258/kopia-20240827.0.94258-macOS-x64.tar.gz"
    sha256 "03af012b50d692f7b4960860b68e59d79d59fa4029ba01ab0fd4858bd73d88ba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240827.0.94258/kopia-20240827.0.94258-macOS-arm64.tar.gz"
    sha256 "a518f8bd6c32d9c8df2c315a71131d8baf665ee2b0a82000797d8d1e55e0fd79"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240827.0.94258/kopia-20240827.0.94258-linux-x64.tar.gz"
    sha256 "dce2385a838f98ec1c5a49989e23f5c6d729438f68bfa8ea6870313d6979efd3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240827.0.94258/kopia-20240827.0.94258-linux-arm.tar.gz"
    sha256 "5f19067475196a8e70cd0f450aedeb2c4218d52874fd6473123dea7816ce9187"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240827.0.94258/kopia-20240827.0.94258-linux-arm64.tar.gz"
    sha256 "281c4a59c3fe129569310f9abf087f8cc745730fa9d4f1d0c2be378eb9ca3e62"
  end

  def install
    bin.install "kopia"
  end
end
