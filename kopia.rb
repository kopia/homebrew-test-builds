# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211212.0.94617"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211212.0.94617/kopia-20211212.0.94617-macOS-x64.tar.gz"
    sha256 "e1380a9f256e2395f8d2f3cf5eaf93bbefa272ca61530998eff31b48e7d424ce"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211212.0.94617/kopia-20211212.0.94617-macOS-arm64.tar.gz"
    sha256 "3dc6b76f427e6cdbfc9cbcfc62bc84ec15a1ba39e51d33129ead94ab03e07f7b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211212.0.94617/kopia-20211212.0.94617-linux-x64.tar.gz"
    sha256 "7c1949f3e2939b0d2b87050c4a0351a3adc7639238dfa3b21d55f31c70c1a0ef"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211212.0.94617/kopia-20211212.0.94617-linux-arm.tar.gz"
    sha256 "193b50cd5a6fd2c39cfe8bc36dbfcdce3d82ef883b4aa14fcd6cb96da3257596"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211212.0.94617/kopia-20211212.0.94617-linux-arm64.tar.gz"
    sha256 "3edb76f09ff1d8e461ce4e30486c696cc56a4bbe696ae4a70911276be12f1c66"
  end

  def install
    bin.install "kopia"
  end
end
