# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240819.0.171303"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240819.0.171303/kopia-20240819.0.171303-macOS-x64.tar.gz"
    sha256 "0acc916b762b4f85ed9d257e0ad01318501b54fab0c04544b3ccfa65f2d8d921"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240819.0.171303/kopia-20240819.0.171303-macOS-arm64.tar.gz"
    sha256 "48d564d8bfd21a5c282e7ecc1996453eb4d25b2a64f10ab3b5a3b2df56df1d93"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240819.0.171303/kopia-20240819.0.171303-linux-x64.tar.gz"
    sha256 "b6d5393a4cb2ee5279cc6dff5a67a937a2a7e2bf370d738c294c2325e2edf396"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240819.0.171303/kopia-20240819.0.171303-linux-arm.tar.gz"
    sha256 "6daf015289201062f94b0b6c6a6d60b810d4a231b32f8369a82585fdefd75464"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240819.0.171303/kopia-20240819.0.171303-linux-arm64.tar.gz"
    sha256 "0023629a51839f1c151d2d31e9239a9dccdf6db4ca57efebae4ccfad941123a0"
  end

  def install
    bin.install "kopia"
  end
end
