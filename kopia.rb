# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251117.0.55033"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.55033/kopia-20251117.0.55033-macOS-x64.tar.gz"
    sha256 "adda9f97a68143c9ed1242a5c43d00db3c05a89f74aafc98ed68e342f9780a86"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.55033/kopia-20251117.0.55033-macOS-arm64.tar.gz"
    sha256 "ce8a95ae4d291a74d0450cd25e253fd836eb394f8c9ca1e04113a6c5e25719a5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.55033/kopia-20251117.0.55033-linux-x64.tar.gz"
    sha256 "205260715613e7e87303b4c1c52df2a28af044be622fedfd386ae86655ce9472"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.55033/kopia-20251117.0.55033-linux-arm.tar.gz"
    sha256 "1c74f6ace8128c4d512b4ced8bad36d3888be5af51222919a3654b711d458911"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.55033/kopia-20251117.0.55033-linux-arm64.tar.gz"
    sha256 "17ab07c1dba5d4c7182169b2f194829a0a0b55c7b3009fc0fec62da742807fb2"
  end

  def install
    bin.install "kopia"
  end
end
