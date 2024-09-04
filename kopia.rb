# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240904.0.45815"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240904.0.45815/kopia-20240904.0.45815-macOS-x64.tar.gz"
    sha256 "f7589db7dc7fe5499f8c7185f7d325ae5aff1fa557f3a08560e2efb9a7015beb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240904.0.45815/kopia-20240904.0.45815-macOS-arm64.tar.gz"
    sha256 "88d28f7627ed6ff03280f02945ad9106a5a3637e07091c9344f84e2797c4da95"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240904.0.45815/kopia-20240904.0.45815-linux-x64.tar.gz"
    sha256 "82918e782e1e054645062acf0f0d03cbd993d782b2fe3a7c271f6401096571de"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240904.0.45815/kopia-20240904.0.45815-linux-arm.tar.gz"
    sha256 "f3cb49db297197b7948d333f07a21d6ba2dcd8a64576d579c220df3ce3893881"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240904.0.45815/kopia-20240904.0.45815-linux-arm64.tar.gz"
    sha256 "90b44bd67ee34d1cb6a71c0095d8063a1c19d5753e06b6e70e04dc82cbd073ca"
  end

  def install
    bin.install "kopia"
  end
end
