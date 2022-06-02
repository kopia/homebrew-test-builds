# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220601.0.190929"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220601.0.190929/kopia-20220601.0.190929-macOS-x64.tar.gz"
    sha256 "c22bcb71b199becf51b4ba2cbdd79986f1836b00443e8fbe13df5dfd68cb5810"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220601.0.190929/kopia-20220601.0.190929-macOS-arm64.tar.gz"
    sha256 "f6bb58c4c6a107c1ca129c64fda0d57f7922f655715181226950eeca2825237c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220601.0.190929/kopia-20220601.0.190929-linux-x64.tar.gz"
    sha256 "65a5855a9fe3ca1f6f6d249baeaedea21d68e21c847c863dbaec48b750f63ef5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220601.0.190929/kopia-20220601.0.190929-linux-arm.tar.gz"
    sha256 "44e3a796d7c307db9cc428aa4f3989314ce0d0f08c14404c96a456e449423b45"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220601.0.190929/kopia-20220601.0.190929-linux-arm64.tar.gz"
    sha256 "e92a485df4f0b1ef05bc8f529d2477e78b499f9fa645ac4693caaf9fa1273e91"
  end

  def install
    bin.install "kopia"
  end
end
