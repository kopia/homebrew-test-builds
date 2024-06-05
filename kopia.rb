# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240605.0.164629"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240605.0.164629/kopia-20240605.0.164629-macOS-x64.tar.gz"
    sha256 "1a6d490a8efcf165617349bac2e524b54c87e65861238d342ffb1910670dfd05"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240605.0.164629/kopia-20240605.0.164629-macOS-arm64.tar.gz"
    sha256 "0d933a27392ec43eaf14ce7ae7a0fbe2e7d86389d3a9a8f7e61375d2aec81c4d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240605.0.164629/kopia-20240605.0.164629-linux-x64.tar.gz"
    sha256 "22a597e06628ce5565c1dd8c6e01099feb8b43e09be25c5f28215fa528b8b798"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240605.0.164629/kopia-20240605.0.164629-linux-arm.tar.gz"
    sha256 "32335ebb91e18a156ce790a0b5d01ef9ed31d4c9f919134917d94b20d4970f13"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240605.0.164629/kopia-20240605.0.164629-linux-arm64.tar.gz"
    sha256 "33ea7db126300614708ee967fe5c6dde0da0a7be4ac032f671556d12d689a016"
  end

  def install
    bin.install "kopia"
  end
end
