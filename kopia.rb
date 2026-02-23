# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260223.0.231822"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260223.0.231822/kopia-20260223.0.231822-macOS-x64.tar.gz"
    sha256 "ebb9f5d4471a3531762c4acd8ffdc245027de1c0328fa6edb7021ec19397a9f8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260223.0.231822/kopia-20260223.0.231822-macOS-arm64.tar.gz"
    sha256 "58c63f28358c23ed236d9a77ccb5543f5af9d26c598864d773cf09d420e8949f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260223.0.231822/kopia-20260223.0.231822-linux-x64.tar.gz"
    sha256 "573fe783bc6ad7a73cda3544e8cf31b4fe3d21df9adf40f9293ee231f07c8fce"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260223.0.231822/kopia-20260223.0.231822-linux-arm.tar.gz"
    sha256 "83079fa23be32b9bfc375f2f07c8145cb2431d1814f2c144b9b48c07319cfc00"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260223.0.231822/kopia-20260223.0.231822-linux-arm64.tar.gz"
    sha256 "6452aca2442b1658e9a0cd145ee9bdb032fdae288810ff3c17864cf1ccf8b2f6"
  end

  def install
    bin.install "kopia"
  end
end
