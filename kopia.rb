# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220103.0.202033"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.202033/kopia-20220103.0.202033-macOS-x64.tar.gz"
    sha256 "aafa531b15d7053ee3fa773a1f647995bee7ad348aa0e8ce26c6aa420d5e8a20"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.202033/kopia-20220103.0.202033-macOS-arm64.tar.gz"
    sha256 "8e2602fbfac5253d12f4d308aff9aaf1d34c193d96a81de1a75733c5b188383b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.202033/kopia-20220103.0.202033-linux-x64.tar.gz"
    sha256 "50d475c901d17e4cfab8948165dbb413a6bae907b94ace24578305027831d2aa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.202033/kopia-20220103.0.202033-linux-arm.tar.gz"
    sha256 "c60ebbc17462c4180922f05aa6db7586ea52c24d12da7c2058533882ff33c31b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.202033/kopia-20220103.0.202033-linux-arm64.tar.gz"
    sha256 "3c2787e02e11ac5beaeaa878f234a7c56949d3f02141ed64465216e819c5f461"
  end

  def install
    bin.install "kopia"
  end
end
