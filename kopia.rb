# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250329.0.224628"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250329.0.224628/kopia-20250329.0.224628-macOS-x64.tar.gz"
    sha256 "7b41df63330e5244256a4854d9e99f47aa34f7c5f0c59f62f4f2523ccfaded4f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250329.0.224628/kopia-20250329.0.224628-macOS-arm64.tar.gz"
    sha256 "ef0e01934237a94dcfbb30b8e53308d9f8a59c9a4cb53aa8e21a1ed6d318d7f0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250329.0.224628/kopia-20250329.0.224628-linux-x64.tar.gz"
    sha256 "a83ece42e14641d0e733c1d2e552935a25ce6da634c987e9e0a76c2d9bf457ed"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250329.0.224628/kopia-20250329.0.224628-linux-arm.tar.gz"
    sha256 "81623e3275b57fd5b4ca812dde0abbe3ed72e83c54880036717b3ec7ddf9b543"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250329.0.224628/kopia-20250329.0.224628-linux-arm64.tar.gz"
    sha256 "e14a3ae2b53b96a5c7a8d338bf387b31f12b6d4c52c8e5347f029bdee94f008d"
  end

  def install
    bin.install "kopia"
  end
end
