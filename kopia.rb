# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220706.0.225649"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220706.0.225649/kopia-20220706.0.225649-macOS-x64.tar.gz"
    sha256 "925bfba4dd378ada2720e3b5c3abec7b88f7ff0e93928ab447941888f5313b67"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220706.0.225649/kopia-20220706.0.225649-macOS-arm64.tar.gz"
    sha256 "87b7c0a80b118265570d92ec80fb652cb96b8bba1f10e65fa7b6ba14e909a864"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220706.0.225649/kopia-20220706.0.225649-linux-x64.tar.gz"
    sha256 "a754a28d52b2647f6c35ac2e1d6f0ae3a796ca9277d7a2b4f75bff2c2660002f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220706.0.225649/kopia-20220706.0.225649-linux-arm.tar.gz"
    sha256 "e3b3fff21b5e6ecf0499b58d9a156de26a203333ca04496bf6d71f713dd7b5b9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220706.0.225649/kopia-20220706.0.225649-linux-arm64.tar.gz"
    sha256 "8fe40ff705fcb603a34c077ddc50a57590f68a79f266ed097a1c0b1a947f4c24"
  end

  def install
    bin.install "kopia"
  end
end
