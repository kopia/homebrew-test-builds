# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251118.0.52258"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.52258/kopia-20251118.0.52258-macOS-x64.tar.gz"
    sha256 "6f4179aa1e787cbdcd96bf06426561e48bcf444afa7d837102628c6ff4b8517f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.52258/kopia-20251118.0.52258-macOS-arm64.tar.gz"
    sha256 "0618e62a650cd1e8e5bfbbba251bfde9c2c99298f0cb3f56d00e26e5c4bb84cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.52258/kopia-20251118.0.52258-linux-x64.tar.gz"
    sha256 "ee0416cf0ef75a8ce0b69c8590b15ed26d1f6458485d89abc3f9703dc03682bb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.52258/kopia-20251118.0.52258-linux-arm.tar.gz"
    sha256 "f0fb16c95503ed70489550236c893ce9fdd9617f5746decc9cd425ef6091c3d9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.52258/kopia-20251118.0.52258-linux-arm64.tar.gz"
    sha256 "c1aa2390344dd098354dec77d6dad5e7b68f62fa01cea264450a4e20b7a19dfb"
  end

  def install
    bin.install "kopia"
  end
end
