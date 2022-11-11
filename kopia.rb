# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221110.0.161523"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221110.0.161523/kopia-20221110.0.161523-macOS-x64.tar.gz"
    sha256 "c0815b01a94430808995b5a412ca637ed15325097af795f3c1760c26f5a0f3c0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221110.0.161523/kopia-20221110.0.161523-macOS-arm64.tar.gz"
    sha256 "fd578377cab0af9424db46608da3d05c72978e3b63e4552c297d6b98e6d0d113"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221110.0.161523/kopia-20221110.0.161523-linux-x64.tar.gz"
    sha256 "ba4f4eae68c1bb1099b1cd6706c4cedf7c55ea0ecdcaebb4160420e0322c2d64"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221110.0.161523/kopia-20221110.0.161523-linux-arm.tar.gz"
    sha256 "eef0172e90fe2e7cec2841a1725ef303a345845c6bb0cd4203bb0c8b5232da8e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221110.0.161523/kopia-20221110.0.161523-linux-arm64.tar.gz"
    sha256 "e57645a4efd45b73eaae7a22b3f8c3b1b9fe65bcc6ae72bd3c0a0c048d2a8e69"
  end

  def install
    bin.install "kopia"
  end
end
