# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220522.0.201701"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220522.0.201701/kopia-20220522.0.201701-macOS-x64.tar.gz"
    sha256 "158f5865b64bfac5d33e20b67b0e8e55260a56cc3ce9ab04304e89dcd902f1c3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220522.0.201701/kopia-20220522.0.201701-macOS-arm64.tar.gz"
    sha256 "1a93fcb67c58155fc7b78f3716307433d579d58d71aaf3c85fcdedea9b74b172"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220522.0.201701/kopia-20220522.0.201701-linux-x64.tar.gz"
    sha256 "e255e6773707d80d5b8c8de76f5b382b6ad362070d2ae28f0023731d918b6bb9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220522.0.201701/kopia-20220522.0.201701-linux-arm.tar.gz"
    sha256 "013627c37d4ce63f6d97aecc4453b7caf5f5defa7cade2a97321bab0e4e56fb1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220522.0.201701/kopia-20220522.0.201701-linux-arm64.tar.gz"
    sha256 "fa86a0fdf24a5c0e0a397c9c2c150ffe2e86d1623af569510036e12130dfcbad"
  end

  def install
    bin.install "kopia"
  end
end
