# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240319.0.183529"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240319.0.183529/kopia-20240319.0.183529-macOS-x64.tar.gz"
    sha256 "c96e6ba94ea96e1bc4e4e73944de288c74136c5bc3e4741c15101e257486c279"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240319.0.183529/kopia-20240319.0.183529-macOS-arm64.tar.gz"
    sha256 "b6483e93f21031c5462f2f7d9b24c50b3f2dd3e9668709a784b5ebfb69720959"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240319.0.183529/kopia-20240319.0.183529-linux-x64.tar.gz"
    sha256 "e310bba00d0b30887e451169dccfcee2a8b86891f80c705b2a2bf4bac6ec6157"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240319.0.183529/kopia-20240319.0.183529-linux-arm.tar.gz"
    sha256 "975c3ad299dc94145cec1d54e761e1f7039bf8c7bc5f4d1ce181adf3273db500"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240319.0.183529/kopia-20240319.0.183529-linux-arm64.tar.gz"
    sha256 "a5311eeb70c535333b5f70cc152ab22ac5bc96eedd314e0e727449cb0a72e7d5"
  end

  def install
    bin.install "kopia"
  end
end
