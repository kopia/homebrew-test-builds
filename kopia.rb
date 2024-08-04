# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240803.0.201430"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240803.0.201430/kopia-20240803.0.201430-macOS-x64.tar.gz"
    sha256 "dc96791f1b7bbdeee08df51c3cbe3b11f0690d4db5bc89162a198b32e0f308cc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240803.0.201430/kopia-20240803.0.201430-macOS-arm64.tar.gz"
    sha256 "b952ebb3fe006c37216e8101d1eecbedeffc7904c7a2c2beb1b69378628a3e7f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240803.0.201430/kopia-20240803.0.201430-linux-x64.tar.gz"
    sha256 "5dbe688558bb1f7e7af7e55fcc1b8bce573143097d44db737b43fb23a9bfc6f9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240803.0.201430/kopia-20240803.0.201430-linux-arm.tar.gz"
    sha256 "15da6cd2bb6d48df3d8a8c623ddd59f7f9825527f657f6c98288baf925ae933c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240803.0.201430/kopia-20240803.0.201430-linux-arm64.tar.gz"
    sha256 "291f1cf4412f4c7efe4d4145a2654f3ccdbd8b4fab293a07b1aaa160856d5f32"
  end

  def install
    bin.install "kopia"
  end
end
