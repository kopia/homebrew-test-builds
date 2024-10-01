# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240930.0.182957"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.182957/kopia-20240930.0.182957-macOS-x64.tar.gz"
    sha256 "e962babe12d2ed3dafba115a36218f90d6e5430c45a7bd6ac787c8ed5f339d7a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.182957/kopia-20240930.0.182957-macOS-arm64.tar.gz"
    sha256 "d33074d7958a837f6689f0b483baad5adeac4ba0b1b32bb56252e9227452b3b2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.182957/kopia-20240930.0.182957-linux-x64.tar.gz"
    sha256 "5047863b56f06d3b01d2741b6229212c89ff3e8180c2a27d0f6b0bb3e4d577e9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.182957/kopia-20240930.0.182957-linux-arm.tar.gz"
    sha256 "8e9cf8f6497edf4b480e13f0dce8b59e99435bf8445b9b05cea99e31fee39f86"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.182957/kopia-20240930.0.182957-linux-arm64.tar.gz"
    sha256 "40d2762a89e954df24543a8c79419cafbdb65631cf92aa9e7f898f27ca075922"
  end

  def install
    bin.install "kopia"
  end
end
