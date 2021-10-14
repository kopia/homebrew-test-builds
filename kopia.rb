# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211013.0.191002"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.191002/kopia-20211013.0.191002-macOS-x64.tar.gz"
    sha256 "61345e878c4e09d65a5d5ce7106186024783f1d293769b0ba8bb6241088e4752"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.191002/kopia-20211013.0.191002-macOS-arm64.tar.gz"
    sha256 "29dbb001f5cccb0f7dcc0f83353616b9bab53fc19d19d9395430934cf1ee5f83"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.191002/kopia-20211013.0.191002-linux-x64.tar.gz"
    sha256 "feacf098f61e88bee171e8e1062c0db1f97c203d26d45794d922a1db56dd2d42"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.191002/kopia-20211013.0.191002-linux-arm.tar.gz"
    sha256 "a6702206aeb2f2a3c3f04a7d2dbe8b182b7f7d80531e1683cdd57630ee20baf7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.191002/kopia-20211013.0.191002-linux-arm64.tar.gz"
    sha256 "598ba03fa776d8b3ffe5c6a4e9680efabd32943fea37ff07f52c47f15aee8af1"
  end

  def install
    bin.install "kopia"
  end
end
