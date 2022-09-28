# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220927.0.192922"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220927.0.192922/kopia-20220927.0.192922-macOS-x64.tar.gz"
    sha256 "e4e8e9bcc0373e1ef28d1993af13694c78731c3fb8a4559ace877d4f8429aa44"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220927.0.192922/kopia-20220927.0.192922-macOS-arm64.tar.gz"
    sha256 "73821710779bcdd2330e8b96809075bafbd9b372275465547ea4a7c43a1aa107"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220927.0.192922/kopia-20220927.0.192922-linux-x64.tar.gz"
    sha256 "95ba141e70d8d0a3eaf7b79b9b28ee8ece8022af315861253be26af9f843f82b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220927.0.192922/kopia-20220927.0.192922-linux-arm.tar.gz"
    sha256 "d58b699be52e4991f23baca0c83c9e39b28a1e6fdc22bea033ec7fbe0beee7a7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220927.0.192922/kopia-20220927.0.192922-linux-arm64.tar.gz"
    sha256 "ffb45ce8b960a16e0db2e20bcbf6100ca436443d4c44619cac888029ac669bbf"
  end

  def install
    bin.install "kopia"
  end
end
