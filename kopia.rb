# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251006.0.234644"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251006.0.234644/kopia-20251006.0.234644-macOS-x64.tar.gz"
    sha256 "f68601b8e79e395f84c04dd53060eb478fad2e5611a26222ecf36c9b085892e2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251006.0.234644/kopia-20251006.0.234644-macOS-arm64.tar.gz"
    sha256 "3e7db2ed774fd7e0ace7958b1a38fe0564e01a3b979b9c843d7030ecd1d65a3f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251006.0.234644/kopia-20251006.0.234644-linux-x64.tar.gz"
    sha256 "2ea9461230c906b9f8184bef9bf7fb82d72244c2befb4658274e4dab31786114"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251006.0.234644/kopia-20251006.0.234644-linux-arm.tar.gz"
    sha256 "e6f1aaf598427f8ab085096f6fdd0b20f21bfb9510de824622d4c9a345ccb55a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251006.0.234644/kopia-20251006.0.234644-linux-arm64.tar.gz"
    sha256 "837bed6e3286930577a95c175e84328e3809db5d6f21747519c3ff99ac481842"
  end

  def install
    bin.install "kopia"
  end
end
