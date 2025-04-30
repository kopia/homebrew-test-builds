# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250430.0.225943"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.225943/kopia-20250430.0.225943-macOS-x64.tar.gz"
    sha256 "c2273d96d118f9684def4f3817cf27f7829271d7aba031eec8c10d8129512666"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.225943/kopia-20250430.0.225943-macOS-arm64.tar.gz"
    sha256 "85e7be2022343fad7b7bad56374fe9b7af92fe355b7211e9e36f00af5829dec4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.225943/kopia-20250430.0.225943-linux-x64.tar.gz"
    sha256 "416515f72e4d78527346edd05a4187ea4d749a29bd2d3f840aebb0eb2f5808fd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.225943/kopia-20250430.0.225943-linux-arm.tar.gz"
    sha256 "6f59cdd61107e73fd569537e0ec9f7c0b544cb9967ae3b2309b468079a1c082d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.225943/kopia-20250430.0.225943-linux-arm64.tar.gz"
    sha256 "78f32d4e386a5052e89d47dd6cfe64d6e7930d9635914ca8d5ffda85ce3d4323"
  end

  def install
    bin.install "kopia"
  end
end
