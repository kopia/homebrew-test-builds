# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260610.0.162537"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.162537/kopia-20260610.0.162537-macOS-x64.tar.gz"
    sha256 "756a2c7d415d000f14d1074820f608472d5722b2905ff7c434d0fc8bd416fb0b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.162537/kopia-20260610.0.162537-macOS-arm64.tar.gz"
    sha256 "d6c37bb62a6df25b2764d018fb1938b84ef6d8f16a94a6e5c8b81538529636c3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.162537/kopia-20260610.0.162537-linux-x64.tar.gz"
    sha256 "fefce65b4e684d8e08f48c0aeb131c705a5f8dcad2fb9dce4cde193fabc72cdb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.162537/kopia-20260610.0.162537-linux-arm.tar.gz"
    sha256 "96bd827424783ffad5786392d08acb5faf2075d4f6ce2c7a765fb84adcd92e6e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.162537/kopia-20260610.0.162537-linux-arm64.tar.gz"
    sha256 "6ba6ae8255c9fae678bb316c292960f37ce9916c59ecdf359613fa0154d7eccc"
  end

  def install
    bin.install "kopia"
  end
end
