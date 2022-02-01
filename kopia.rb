# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220201.0.102913"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.102913/kopia-20220201.0.102913-macOS-x64.tar.gz"
    sha256 "95e4eecf34ad19a74601d1f81f42888ffe6cce7d3dd5b2aec5591f7f01ae50d4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.102913/kopia-20220201.0.102913-macOS-arm64.tar.gz"
    sha256 "b805440aed8211130a458070cb2e53a2afe95b182b283fe6a99f25e9c5f4cb58"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.102913/kopia-20220201.0.102913-linux-x64.tar.gz"
    sha256 "f1229f973b9230dc5e3c03a17548377362dede895fa865e479d9a83f0e852053"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.102913/kopia-20220201.0.102913-linux-arm.tar.gz"
    sha256 "2cc9d7ed86c5432cb0008e9dd72a545008a3c50d0e63d4788ca5bab440c47116"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.102913/kopia-20220201.0.102913-linux-arm64.tar.gz"
    sha256 "d6b82e74949b730982d23dddeb906d93ea80f2b62b4a2642b2707deabf90250e"
  end

  def install
    bin.install "kopia"
  end
end
