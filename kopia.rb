# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260615.0.225118"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260615.0.225118/kopia-20260615.0.225118-macOS-x64.tar.gz"
    sha256 "69422739ca33db50b8b8a56f55a587cad17cee92b50dd87e1c265078bb7ff86f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260615.0.225118/kopia-20260615.0.225118-macOS-arm64.tar.gz"
    sha256 "9d32517cf70aa5664bdbe3fff12c2797cb8683ad5fb90f816b1b2cbcad1a29cf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260615.0.225118/kopia-20260615.0.225118-linux-x64.tar.gz"
    sha256 "e985349851b3424cf5657d938037d9c768d0508524028d1b6fa53aacb3fe8101"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260615.0.225118/kopia-20260615.0.225118-linux-arm.tar.gz"
    sha256 "9e0b72a5ac826f8685ad424405c2e898621043a254710204519ca967c3fc6559"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260615.0.225118/kopia-20260615.0.225118-linux-arm64.tar.gz"
    sha256 "56950e188149c27a35c0672fe600f50a858c229e120977e8d7931bef7c721d57"
  end

  def install
    bin.install "kopia"
  end
end
