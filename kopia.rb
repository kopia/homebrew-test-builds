# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.162906"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.162906/kopia-20210717.0.162906-macOS-x64.tar.gz"
    sha256 "c1e1e658080c3310eebf3c819ee34bb96fe89e40258ff177cb15f54fcded00b1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.162906/kopia-20210717.0.162906-macOS-arm64.tar.gz"
    sha256 "83d7515b6783113315681b966f4ecc46aa9390f8afb83587d4f455a1b9375f4d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.162906/kopia-20210717.0.162906-linux-x64.tar.gz"
    sha256 "e54b26392b44965f6ac372aaf04bf4b65cfc591a2716ecfe848557900cc1d89f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.162906/kopia-20210717.0.162906-linux-arm.tar.gz"
    sha256 "0721567aaa02da1087af61a86aaa817ce359faa7890601b3aea9642e667eece2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.162906/kopia-20210717.0.162906-linux-arm64.tar.gz"
    sha256 "0f132ec9ecbc55d1f1df92304225e1ac2f792480a3be19c79956f170dbae820a"
  end

  def install
    bin.install "kopia"
  end
end
