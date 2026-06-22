# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260622.0.222427"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260622.0.222427/kopia-20260622.0.222427-macOS-x64.tar.gz"
    sha256 "c3eea3c52b4ddd0c256256bd9442bf327e6f235d5dc1941cf087522f4535287c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260622.0.222427/kopia-20260622.0.222427-macOS-arm64.tar.gz"
    sha256 "518c2905dbd247d54e210524155f719b421210d1dab270995f473268e7e93457"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260622.0.222427/kopia-20260622.0.222427-linux-x64.tar.gz"
    sha256 "43095eee0f5daf42938bc423918423adb6732a6f20496903305c31e608813c8f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260622.0.222427/kopia-20260622.0.222427-linux-arm.tar.gz"
    sha256 "0751507cb9465f58ddfc2d9fe3c98f019c80f737cb8241cc7451f0697ea144dd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260622.0.222427/kopia-20260622.0.222427-linux-arm64.tar.gz"
    sha256 "d49a305d39b7f758b0514d29619228469300be97b99eed4a6aceb92ca9182765"
  end

  def install
    bin.install "kopia"
  end
end
