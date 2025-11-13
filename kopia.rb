# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251113.0.45956"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.45956/kopia-20251113.0.45956-macOS-x64.tar.gz"
    sha256 "1712c893b8b9f776fa52e06141271647635c579f6b276ac217e67c7ab898261f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.45956/kopia-20251113.0.45956-macOS-arm64.tar.gz"
    sha256 "0fd2c1f94608d2516a58cbe89ba430e62c487122254eba2786ec1909020996a0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.45956/kopia-20251113.0.45956-linux-x64.tar.gz"
    sha256 "e351b9e750921d98ed3ee38249504d4cc7429aad46b9cdd2d821eb38421d5673"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.45956/kopia-20251113.0.45956-linux-arm.tar.gz"
    sha256 "596f463b20a28bc45572d52573263ebd273dfa1059bcdd4448624cee01b9228a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.45956/kopia-20251113.0.45956-linux-arm64.tar.gz"
    sha256 "6d8582990d57a185e3432e911c25b93a2b0042113fb33d7457f2613fcb242bb1"
  end

  def install
    bin.install "kopia"
  end
end
