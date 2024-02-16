# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240216.0.145906"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240216.0.145906/kopia-20240216.0.145906-macOS-x64.tar.gz"
    sha256 "c800b1f43558acf968d50ec00cb7f28826622c353068dcaf9589a19b063ddc3f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240216.0.145906/kopia-20240216.0.145906-macOS-arm64.tar.gz"
    sha256 "de97493079397afea77e92165c2c41a86fd82b7256aa8ac041c02fee889e10da"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240216.0.145906/kopia-20240216.0.145906-linux-x64.tar.gz"
    sha256 "62d4d633c294245aefec5be14a5b2cf2d32ae1ad54a1d1ceeb40fca3e1206915"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240216.0.145906/kopia-20240216.0.145906-linux-arm.tar.gz"
    sha256 "8e5d4a177cbfe5b1430a9b468f882ba673564372a27c50904ca7421b9f94d4b6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240216.0.145906/kopia-20240216.0.145906-linux-arm64.tar.gz"
    sha256 "4c573de9ce0253c366e424909e8fa34e9e8c0eb6f300f893f76a57eee4125a86"
  end

  def install
    bin.install "kopia"
  end
end
