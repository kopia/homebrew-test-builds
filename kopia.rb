# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260910.0.212920"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.212920/kopia-20260910.0.212920-macOS-x64.tar.gz"
    sha256 "3fd9c7a0e26ac5437aff846a1cf5782cd366ce7b5086437764d4ac226663809e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.212920/kopia-20260910.0.212920-macOS-arm64.tar.gz"
    sha256 "96f241a809051582897624cd58c5f7401b904795f4763bf68b5fcfb4aeda7028"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.212920/kopia-20260910.0.212920-linux-x64.tar.gz"
    sha256 "7312915857a3459bc24e438f17e6f198a73e5fdd9e672f993328f1e1e1377602"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.212920/kopia-20260910.0.212920-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.212920/kopia-20260910.0.212920-linux-arm64.tar.gz"
    sha256 "0b9742a592177ce073429764b7757508464fcfa7c9cbdbab4d2139dec13d7e3b"
  end

  def install
    bin.install "kopia"
  end
end
