# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220317.0.233936"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220317.0.233936/kopia-20220317.0.233936-macOS-x64.tar.gz"
    sha256 "8e99a61126e3cdcd6e522175da2d0b1020aefee5880b202570d4b6f57f838097"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220317.0.233936/kopia-20220317.0.233936-macOS-arm64.tar.gz"
    sha256 "92bab73cbd6ab15f758dd0d3fee977c59a717937fab9e8d2dcbaa289e08bfc88"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220317.0.233936/kopia-20220317.0.233936-linux-x64.tar.gz"
    sha256 "54ff4c3b5a5212a841e41e917a9983804217237135b4547fe25fa891b9d57bc0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220317.0.233936/kopia-20220317.0.233936-linux-arm.tar.gz"
    sha256 "aaf00af329cabbce6e5a95222d7790351b084b97138489fa62d39743d744dc0b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220317.0.233936/kopia-20220317.0.233936-linux-arm64.tar.gz"
    sha256 "bf287881056e235bdf545847b3f55b5f8613382ea1d46186b1202ac8257cb3a0"
  end

  def install
    bin.install "kopia"
  end
end
