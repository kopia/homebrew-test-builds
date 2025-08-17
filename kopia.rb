# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250817.0.30331"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.30331/kopia-20250817.0.30331-macOS-x64.tar.gz"
    sha256 "09045fcff7c567c53d394851820af48e4c205c74f9b5405e8f8c900fb0b11378"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.30331/kopia-20250817.0.30331-macOS-arm64.tar.gz"
    sha256 "e656b3217ae79436ff8b178e7b65f3510e6cd9ad2e66de5bc7edae7affd53aa7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.30331/kopia-20250817.0.30331-linux-x64.tar.gz"
    sha256 "dfa01aa490e4e8c738cae8c4129e248ff8e15ae4208a2f9ca421ffec25d8ba4a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.30331/kopia-20250817.0.30331-linux-arm.tar.gz"
    sha256 "1004518b0d4ef368cc14d48fc1763ca1cd90cf65df5e1a7866a33d3e426738d6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.30331/kopia-20250817.0.30331-linux-arm64.tar.gz"
    sha256 "da5752da3c274eb149e5b28bfa15a6a707d4f68f570215b3b25da99c79fdcfdb"
  end

  def install
    bin.install "kopia"
  end
end
