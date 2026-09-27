# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260927.0.53511"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.53511/kopia-20260927.0.53511-macOS-x64.tar.gz"
    sha256 "e62ac08d945b27ae625cd1f0faf983ba7aa42ef9ee79149cee8efb6c777a6603"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.53511/kopia-20260927.0.53511-macOS-arm64.tar.gz"
    sha256 "a3934eb03a3bbe34b1333db51dc891350310ea73a0b6002e426b989da7ce2af2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.53511/kopia-20260927.0.53511-linux-x64.tar.gz"
    sha256 "f93228f671317d118ff30f721b1d1e8ea4d01f6ca10ed47b04adf8c4058290bd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.53511/kopia-20260927.0.53511-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.53511/kopia-20260927.0.53511-linux-arm64.tar.gz"
    sha256 "229652714e2e9ed061e6761125158abad1453fe043e3830f9b06c5242eb2cf82"
  end

  def install
    bin.install "kopia"
  end
end
