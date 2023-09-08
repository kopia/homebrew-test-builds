# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230908.0.72032"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230908.0.72032/kopia-20230908.0.72032-macOS-x64.tar.gz"
    sha256 "188ba9058c8d041e059931316daea524f0167cef43031eb0412f945168965ee8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230908.0.72032/kopia-20230908.0.72032-macOS-arm64.tar.gz"
    sha256 "d0bb31405ede1e992a1eb1240eb54775929af2626fdde60cce67409237f3ee4c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230908.0.72032/kopia-20230908.0.72032-linux-x64.tar.gz"
    sha256 "48eaa7393abe3b99bed947577f44d0e5f5e428b3475685f05db2469e0ff8b898"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230908.0.72032/kopia-20230908.0.72032-linux-arm.tar.gz"
    sha256 "51541b0b1a8b69d452ca041f0ea46d438f2df4cbc54736d2ec98f43d0a7243c7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230908.0.72032/kopia-20230908.0.72032-linux-arm64.tar.gz"
    sha256 "7f740e3e62d6f23ad8b2b088b811e1b34258ea6997b4d1fcd03e66f9349648dc"
  end

  def install
    bin.install "kopia"
  end
end
