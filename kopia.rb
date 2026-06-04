# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260604.0.55837"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.55837/kopia-20260604.0.55837-macOS-x64.tar.gz"
    sha256 "17143f12dc8549b1e6aab890c50cfb51df948b0679ffa9eb04d3cae820b20277"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.55837/kopia-20260604.0.55837-macOS-arm64.tar.gz"
    sha256 "56499df1a9805d0f43416189a538b700b2889be0ac95921ce4f45bb7fc2a742a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.55837/kopia-20260604.0.55837-linux-x64.tar.gz"
    sha256 "906fc67850d584fb203ac3e8d177996d4f9279809902b27f48e3e7dd9167c934"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.55837/kopia-20260604.0.55837-linux-arm.tar.gz"
    sha256 "547787ac282b891a3e4828117522a4afd626ce3b92ed32f6fedec728f53b8708"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.55837/kopia-20260604.0.55837-linux-arm64.tar.gz"
    sha256 "8172e8e571e1323bda0a2fdda45a1500bd959262592dd904052c9da0f287d9c3"
  end

  def install
    bin.install "kopia"
  end
end
