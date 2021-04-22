# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210421.0.230403"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210421.0.230403/kopia-20210421.0.230403-macOS-x64.tar.gz"
    sha256 "136451b4d7f5db78efc9714f2b1064b8a584f6e8161776abd5f7b8f056cfc1f9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210421.0.230403/kopia-20210421.0.230403-macOS-arm64.tar.gz"
    sha256 "9ab7b408d8aa9129529aba611caea541ba809a8adcdc8b54aa6f6cf1d693ef62"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210421.0.230403/kopia-20210421.0.230403-linux-x64.tar.gz"
    sha256 "48854f5b28ec745efaa3b4a70f8be09cc3f02645c8ee520d906ccae28fff9bb9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210421.0.230403/kopia-20210421.0.230403-linux-arm.tar.gz"
    sha256 "a71be8a4948bc5077157c2ef4e6581b7fcc3f7b435ec99c93e143786f2310d87"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210421.0.230403/kopia-20210421.0.230403-linux-arm64.tar.gz"
    sha256 "5e8fd49ff47e819d4748d026e7e836af5e71e928231710f6ab50f17789495e86"
  end

  def install
    bin.install "kopia"
  end
end
