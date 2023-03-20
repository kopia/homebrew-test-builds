# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230317.0.2327"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230317.0.2327/kopia-20230317.0.2327-macOS-x64.tar.gz"
    sha256 "5fd5670d1e1f5dcf6b01ab18602a47ccc87ae5e0b23a8e4f9fde397051e8ac08"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230317.0.2327/kopia-20230317.0.2327-macOS-arm64.tar.gz"
    sha256 "8e81fa08157a8b3a56da58ba65d12ab6c2cc1687cb8c498feed9c51d524cc05b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230317.0.2327/kopia-20230317.0.2327-linux-x64.tar.gz"
    sha256 "fcced9aea957592a02f86cefd81f13ef3d24e60638e57ec88bf5fa2799c43dbc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230317.0.2327/kopia-20230317.0.2327-linux-arm.tar.gz"
    sha256 "cd844eac06d193827e5593b3bfa1398e4cf78cc94f089110a99545d28a12f4b9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230317.0.2327/kopia-20230317.0.2327-linux-arm64.tar.gz"
    sha256 "b72490ad5377f662af0d45f209a56b0c5de24b7d514ceddf178bb28af5ccb9d0"
  end

  def install
    bin.install "kopia"
  end
end
