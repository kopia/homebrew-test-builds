# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210901.0.60610"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.60610/kopia-20210901.0.60610-macOS-x64.tar.gz"
    sha256 "a08b879dc2461ae2e12abecab97aaa7e350b2b6b192a69243e6fe73bd55fb318"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.60610/kopia-20210901.0.60610-macOS-arm64.tar.gz"
    sha256 "17914fce355fdee2d63c2ec2106b659d00c060404eb0a3a9511205bd3bc16be4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.60610/kopia-20210901.0.60610-linux-x64.tar.gz"
    sha256 "34d7ce7eb3cad5ab124cabf8d622aebb8a6be507f801ff501602d9a5b1de3cfb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.60610/kopia-20210901.0.60610-linux-arm.tar.gz"
    sha256 "71d02cef93d416bc40081db5b7976acea2149b2565695a4610b401a5e2fa4b74"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.60610/kopia-20210901.0.60610-linux-arm64.tar.gz"
    sha256 "63fb2805dbf21675f486a9b6dd3d5a10af22a3a477c70995c6cce8b9f9766441"
  end

  def install
    bin.install "kopia"
  end
end
