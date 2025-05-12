# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250512.0.51534"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.51534/kopia-20250512.0.51534-macOS-x64.tar.gz"
    sha256 "e1b1ad6b1eeb41026419ce1754f94962c6c712b1674ae9383a4c62f8842d8b83"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.51534/kopia-20250512.0.51534-macOS-arm64.tar.gz"
    sha256 "29c0ad5db2de315077355cc4333b43f4acbe01abb3a5f1629ce9c443a29ed583"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.51534/kopia-20250512.0.51534-linux-x64.tar.gz"
    sha256 "c3c457331b693ae8e5afe842d7256c48fb592331ddadcc8ccd0aedf152b3a76b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.51534/kopia-20250512.0.51534-linux-arm.tar.gz"
    sha256 "d307a57e66bd8ab0e4fbd9235879d31a55a11b6a87fa36d1c31709c9c0d9d1be"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.51534/kopia-20250512.0.51534-linux-arm64.tar.gz"
    sha256 "95be98f18069378aba1ab4b35caf137fb25b457a58c426cf81f25dcf8e5d75be"
  end

  def install
    bin.install "kopia"
  end
end
