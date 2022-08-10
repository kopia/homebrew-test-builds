# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220809.0.200415"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.200415/kopia-20220809.0.200415-macOS-x64.tar.gz"
    sha256 "aaa4fb2e4d2b98640b6210371e873457337e9be8f32e937ab8636869d57a7e56"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.200415/kopia-20220809.0.200415-macOS-arm64.tar.gz"
    sha256 "57f3caa53aafd66230d6ec27646f05b4de0f3259c527b1a2e96b90b1610a5c8f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.200415/kopia-20220809.0.200415-linux-x64.tar.gz"
    sha256 "42736287094651114fa517a5f665ce94e7a4cf557354c91366f86de453acd709"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.200415/kopia-20220809.0.200415-linux-arm.tar.gz"
    sha256 "bbc9d10e343036a1a891926b5bd7ad6aa0d12323f81cdfb549c01c9215416bb3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.200415/kopia-20220809.0.200415-linux-arm64.tar.gz"
    sha256 "f99ca2e8070f3754ff53721ffd369218874279ef1ba67deb5548750ed6643712"
  end

  def install
    bin.install "kopia"
  end
end
