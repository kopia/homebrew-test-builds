# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.213926"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.213926/kopia-20211103.0.213926-macOS-x64.tar.gz"
    sha256 "d2f088a314e10feb0931ab92d41fa77687579172182807f8c64ad24c247bf666"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.213926/kopia-20211103.0.213926-macOS-arm64.tar.gz"
    sha256 "9fbd00aef23a37eba33bf8263f039867e32fe4243ff1537ee9685781fb82a3b2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.213926/kopia-20211103.0.213926-linux-x64.tar.gz"
    sha256 "272f0f6d2014c641ba7017963a00ebfdfc41e23c294c5c94325a019974a939ef"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.213926/kopia-20211103.0.213926-linux-arm.tar.gz"
    sha256 "d719524df5164e9ccfe64bbf8fff61a08ca271623d02b3af7c23d64d2426432f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.213926/kopia-20211103.0.213926-linux-arm64.tar.gz"
    sha256 "2839850e7e2abfa5b5338c69a567032f02bc3826ada77ee926f0482115a080f4"
  end

  def install
    bin.install "kopia"
  end
end
