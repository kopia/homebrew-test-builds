# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240313.0.182950"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.182950/kopia-20240313.0.182950-macOS-x64.tar.gz"
    sha256 "82210c88cd26b5062b3c6c4953cf78cbcabc9bfad652fd67d28aa424ecd47784"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.182950/kopia-20240313.0.182950-macOS-arm64.tar.gz"
    sha256 "2d5377ae973c647b559b7fbbb13470a2ef020d64b7c539a1f9a31217ff56ebc5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.182950/kopia-20240313.0.182950-linux-x64.tar.gz"
    sha256 "cbee4062e72a9308159eedf3bf97f6f73961080b4facf4eb20b0caa6cffdad4d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.182950/kopia-20240313.0.182950-linux-arm.tar.gz"
    sha256 "ec6eb751ecccd87662c07e90cbd80816d9590b013341ecc57ce45eaf4fe8a838"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.182950/kopia-20240313.0.182950-linux-arm64.tar.gz"
    sha256 "eb1aa467b5ee7fa8361c5b014d69b2548c3c77f7f2a80e8948af3bb4229d29ec"
  end

  def install
    bin.install "kopia"
  end
end
