# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260220.0.50304"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260220.0.50304/kopia-20260220.0.50304-macOS-x64.tar.gz"
    sha256 "18937ae070b808983db6b758d466c531fb0be002f96112645562ec2844e5322c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260220.0.50304/kopia-20260220.0.50304-macOS-arm64.tar.gz"
    sha256 "2c27a6cc7c366dea42712c34fced4ee7df56b553dc89e818b5ce29bad788429d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260220.0.50304/kopia-20260220.0.50304-linux-x64.tar.gz"
    sha256 "3a145c47b7a42b08c644881dfbd6d7c96af16e5cdcdb0bbcff714a69cd4d3c1c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260220.0.50304/kopia-20260220.0.50304-linux-arm.tar.gz"
    sha256 "43199d8b64b8f6d8c2b854e8ee2ade6ebb9a62e7dcbded03b00d4b79dcebf20e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260220.0.50304/kopia-20260220.0.50304-linux-arm64.tar.gz"
    sha256 "d5c8820c3e79b54b8daf1c738958a4e640812f5dafcbdd05e24e6e2f4f835d1d"
  end

  def install
    bin.install "kopia"
  end
end
