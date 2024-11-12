# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241111.0.175350"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241111.0.175350/kopia-20241111.0.175350-macOS-x64.tar.gz"
    sha256 "80c66dff15b0cf66ba4778bfbbf882f284f6becf0eefd3efe1a9adb6cd38dd5f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241111.0.175350/kopia-20241111.0.175350-macOS-arm64.tar.gz"
    sha256 "cd547c715393343756fee8ed305d45c06afa9178bef8ea538861bca5beb4aa44"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241111.0.175350/kopia-20241111.0.175350-linux-x64.tar.gz"
    sha256 "76d6beb068c83f298051c49889b69ee5c454aafecca60143fdc7d789194490c8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241111.0.175350/kopia-20241111.0.175350-linux-arm.tar.gz"
    sha256 "9e981b7cbbd4f0c68b1a744ecad03eade847750c3fb29899aa0995b1ae10b1f8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241111.0.175350/kopia-20241111.0.175350-linux-arm64.tar.gz"
    sha256 "8512c0aba4f3fc23a7bd798828ad51d8ce8c6336669400c97fb98dbbb49d2bf9"
  end

  def install
    bin.install "kopia"
  end
end
