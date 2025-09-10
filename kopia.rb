# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250910.0.11252"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250910.0.11252/kopia-20250910.0.11252-macOS-x64.tar.gz"
    sha256 "21bf6e9e9bd4121f2b94406adf03e7be464bbf8e8bc334a872c6b886040fc51f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250910.0.11252/kopia-20250910.0.11252-macOS-arm64.tar.gz"
    sha256 "fc1f5099e76cdac7f5508b78426031ffbf0b66ca4d7f2f05fed08caa31736551"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250910.0.11252/kopia-20250910.0.11252-linux-x64.tar.gz"
    sha256 "2a46a6e3a7a721b68321949390db65affecc5fc2986dd5c3bce707f3433c930a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250910.0.11252/kopia-20250910.0.11252-linux-arm.tar.gz"
    sha256 "ae2a399ef241e79f0d7c29b5e51816263100914a99f2dd432627d4b426b9c306"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250910.0.11252/kopia-20250910.0.11252-linux-arm64.tar.gz"
    sha256 "5ba59494364ebcb71c3e68833c78f06082ba700dd6dcb7d92519624604765c5b"
  end

  def install
    bin.install "kopia"
  end
end
