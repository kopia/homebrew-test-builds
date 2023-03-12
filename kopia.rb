# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230312.0.145310"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.145310/kopia-20230312.0.145310-macOS-x64.tar.gz"
    sha256 "d4da75ef9efe71476e39816f0849d0b3b751c345ce4314c7e3370bd1da178cf2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.145310/kopia-20230312.0.145310-macOS-arm64.tar.gz"
    sha256 "6fb11dff5dbe63d5fd0d99d52ce968ffb698251f71b24c1cbc413670b910d42e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.145310/kopia-20230312.0.145310-linux-x64.tar.gz"
    sha256 "b49a215a94a6ca0b29b8f85e81c01ce9f8b3532ddf36d692b9aa2e194770a60e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.145310/kopia-20230312.0.145310-linux-arm.tar.gz"
    sha256 "db354eef6463f40767c226085d6dfa0cb2fd75860d29e6b9f590cc808d07284e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.145310/kopia-20230312.0.145310-linux-arm64.tar.gz"
    sha256 "9a6763b97e433b9480eccab13b1bcca977746cea72f971a2ebfca9d07f2ed97c"
  end

  def install
    bin.install "kopia"
  end
end
