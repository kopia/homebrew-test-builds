# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220510.0.34525"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220510.0.34525/kopia-20220510.0.34525-macOS-x64.tar.gz"
    sha256 "24ebb55576ffa33d8df6128accafba43e872168f9f886c3ca14c15a50724bb9a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220510.0.34525/kopia-20220510.0.34525-macOS-arm64.tar.gz"
    sha256 "ce688745e7814d9a133fd96576b16155b1bdd0281ead9f18e4ad6b31ac9da1e5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220510.0.34525/kopia-20220510.0.34525-linux-x64.tar.gz"
    sha256 "a7582e5ac48f69229611e4cc8be08d72db0f4f0a1b6024744662b31565eaa1a7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220510.0.34525/kopia-20220510.0.34525-linux-arm.tar.gz"
    sha256 "ae84af2c15018bfebbe1eb4182622307d39afc9947089581d277d18db2347f7d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220510.0.34525/kopia-20220510.0.34525-linux-arm64.tar.gz"
    sha256 "f5f058b523794385beae8158d093ddc6438a9f0b113635be1d8f4fbc6aba9211"
  end

  def install
    bin.install "kopia"
  end
end
