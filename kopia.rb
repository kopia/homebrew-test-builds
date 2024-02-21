# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240220.0.185207"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.185207/kopia-20240220.0.185207-macOS-x64.tar.gz"
    sha256 "e541d97b52bcf3364518e7baf001a76cbf6368a0caebc061b3930ccb799866c8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.185207/kopia-20240220.0.185207-macOS-arm64.tar.gz"
    sha256 "5735abb06233ad8fe124aa961711a9eac96cb17156cfe2398f4e1f8dfcbf41cf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.185207/kopia-20240220.0.185207-linux-x64.tar.gz"
    sha256 "f81be9211dda1bfdd6058d79d7546ca637d1c185ee062f9f79d1894193b53bb0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.185207/kopia-20240220.0.185207-linux-arm.tar.gz"
    sha256 "a3039947d6df6af3513fcb8f20923f36651f67741907937f4d816e37537bd646"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.185207/kopia-20240220.0.185207-linux-arm64.tar.gz"
    sha256 "2d3fa8a3c9537d585d4c322ba2b2411c4bc160f3ea09e6246ea4436c350a3f7a"
  end

  def install
    bin.install "kopia"
  end
end
