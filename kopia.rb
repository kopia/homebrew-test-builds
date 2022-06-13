# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220613.0.34108"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220613.0.34108/kopia-20220613.0.34108-macOS-x64.tar.gz"
    sha256 "7381d092f11123f44e7db1c16ceadcbf9626010ad2742347b860af5f72f7ca41"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220613.0.34108/kopia-20220613.0.34108-macOS-arm64.tar.gz"
    sha256 "eade210f1482248a0d216ad5c024434be486965e1d7535798196fe4d937d4120"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220613.0.34108/kopia-20220613.0.34108-linux-x64.tar.gz"
    sha256 "e4f1f15811661e0b75d69116ed7021cfbab23fed86e53e91d4492f8c2ec9f096"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220613.0.34108/kopia-20220613.0.34108-linux-arm.tar.gz"
    sha256 "cac7056e7665272e00cca16e3a5250028955ef8954107fee39979b4c0403f8da"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220613.0.34108/kopia-20220613.0.34108-linux-arm64.tar.gz"
    sha256 "42eec1b8c4d4dcce9476e16cae9d2399142e9d4a15cc2fd35b34d2aad06629f0"
  end

  def install
    bin.install "kopia"
  end
end
