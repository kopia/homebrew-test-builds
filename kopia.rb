# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250527.0.4302"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250527.0.4302/kopia-20250527.0.4302-macOS-x64.tar.gz"
    sha256 "e9404e920119cd4b0a7cc502ce4eef969498cb530e7b9a169bc329d857046efb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250527.0.4302/kopia-20250527.0.4302-macOS-arm64.tar.gz"
    sha256 "864b0149af70ea25d273abf031da778e98af8f4e68d81fc673a3e76ab417ef78"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250527.0.4302/kopia-20250527.0.4302-linux-x64.tar.gz"
    sha256 "970c898d063cd176a455bf6192cadbc7825470077bcadb8e146b99dc0c8e1e99"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250527.0.4302/kopia-20250527.0.4302-linux-arm.tar.gz"
    sha256 "1a4afcd59d51d13f5eafe7c51f9747b3b5aaaf6ac93ad84b7b1eb3b4cab36e39"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250527.0.4302/kopia-20250527.0.4302-linux-arm64.tar.gz"
    sha256 "e5ba286723b3f94bd1fdfe68c589622df4b5608dcdb5e8fde24a6c1a6d960b7d"
  end

  def install
    bin.install "kopia"
  end
end
