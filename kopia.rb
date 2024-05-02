# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240502.0.180128"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240502.0.180128/kopia-20240502.0.180128-macOS-x64.tar.gz"
    sha256 "a5ebb28440314fd36bb15cf12b8b7d68613072c20fb9f2acd8bb1f91725ef493"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240502.0.180128/kopia-20240502.0.180128-macOS-arm64.tar.gz"
    sha256 "bbc1e4ba3d330af5036c29b281225268a9a58b8801e1106b7476c8caf6936bb4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240502.0.180128/kopia-20240502.0.180128-linux-x64.tar.gz"
    sha256 "c498a564ab81e510ef0484ee91392f28ef571e7aa325d4fe21b28bb2270f655e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240502.0.180128/kopia-20240502.0.180128-linux-arm.tar.gz"
    sha256 "b7b9b877d9058c9ee6354a823bfc256da51972c49df703ef35919a6acb766b56"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240502.0.180128/kopia-20240502.0.180128-linux-arm64.tar.gz"
    sha256 "3b6bb5eea7009c29a848afd263c73929f64c346c9ecafc94b4e23bd030528ef6"
  end

  def install
    bin.install "kopia"
  end
end
