# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230313.0.74412"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230313.0.74412/kopia-20230313.0.74412-macOS-x64.tar.gz"
    sha256 "ed8051c89e0e654d43cf394b01d67c70227df976d56aa7ad493efda823d69811"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230313.0.74412/kopia-20230313.0.74412-macOS-arm64.tar.gz"
    sha256 "bc9031f24f8c4fb838cdd987d9e75e36a32412a2b580e9d90f66f61425f27455"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230313.0.74412/kopia-20230313.0.74412-linux-x64.tar.gz"
    sha256 "be608ca9188867f7f5c633e1d489d29e6b7b420e60529e11582404a8ea8af302"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230313.0.74412/kopia-20230313.0.74412-linux-arm.tar.gz"
    sha256 "4cf7488bc1c026df80f712686d5d2a8806a9c3c21fc8a8f8ca8be30bfcfc728f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230313.0.74412/kopia-20230313.0.74412-linux-arm64.tar.gz"
    sha256 "41a6cdb30b3d2816a040c24578ad9fad51d7e8cbc30338cfcae65ec5deb9b2ad"
  end

  def install
    bin.install "kopia"
  end
end
