# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250214.0.233832"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250214.0.233832/kopia-20250214.0.233832-macOS-x64.tar.gz"
    sha256 "a3783811ed162378e495f6a9eb451d5f9edaabb772f4446f8aef646c0154c55b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250214.0.233832/kopia-20250214.0.233832-macOS-arm64.tar.gz"
    sha256 "abf1a0877d147e32efcfc26efbe77dad927c7aa0e8bf1364519185fe46ec6952"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250214.0.233832/kopia-20250214.0.233832-linux-x64.tar.gz"
    sha256 "1de6b5e9c906284d4e1dca3326a3bbe98b93063381fe68b56762b89d67d07019"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250214.0.233832/kopia-20250214.0.233832-linux-arm.tar.gz"
    sha256 "d383c729d65d35bff3f5e73ecbe74d02fa5615211810a1253d64903f93ad15f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250214.0.233832/kopia-20250214.0.233832-linux-arm64.tar.gz"
    sha256 "9c279f7fe853e71943b38aa6b4a368df25dff61871c68f6059bd396cb4ca2521"
  end

  def install
    bin.install "kopia"
  end
end
