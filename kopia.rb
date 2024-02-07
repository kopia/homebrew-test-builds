# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240207.0.23240"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.23240/kopia-20240207.0.23240-macOS-x64.tar.gz"
    sha256 "e2f470d030b4b7f978a109bf0e0b70236d1bc37503fb12e94201900ec16dec19"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.23240/kopia-20240207.0.23240-macOS-arm64.tar.gz"
    sha256 "f5952fd966d9769aa300dc73cf5dc70c292dd64c075f75cca9e9632353ae9b2c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.23240/kopia-20240207.0.23240-linux-x64.tar.gz"
    sha256 "b591a7b9ffc2aa60157e94795f191670a6ee1e502a55510721f7543aa8027b88"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.23240/kopia-20240207.0.23240-linux-arm.tar.gz"
    sha256 "8b4ae49ecd0f0e5291ba2cb59c0df7173640348db499f0d20206a28e080ae41d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.23240/kopia-20240207.0.23240-linux-arm64.tar.gz"
    sha256 "1e6ca92921eff5e82f8327673a187e0c664e22aa069847f64a12e2a2e9590a57"
  end

  def install
    bin.install "kopia"
  end
end
