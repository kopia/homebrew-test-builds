# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231211.0.183046"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231211.0.183046/kopia-20231211.0.183046-macOS-x64.tar.gz"
    sha256 "abc0ce1c10380e63286af5545b6f21fb3517b770294dfdb3f13a87939612030f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231211.0.183046/kopia-20231211.0.183046-macOS-arm64.tar.gz"
    sha256 "8c32c5c90766854453c29ec5018e6c3f46dffc05140d97efd5c8da972757e045"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231211.0.183046/kopia-20231211.0.183046-linux-x64.tar.gz"
    sha256 "3b82f9841366452d77669ff708c807f2b4b55382b8df4ebd794cfb2887c44497"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231211.0.183046/kopia-20231211.0.183046-linux-arm.tar.gz"
    sha256 "6d4af49f14a8d188e3d51cb13918ec2bc3e6cb9e27e423105104f4f8fa906e46"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231211.0.183046/kopia-20231211.0.183046-linux-arm64.tar.gz"
    sha256 "1584911d21604ffdd77a44745323d14487a09066d0f6fca29cb523964db565ec"
  end

  def install
    bin.install "kopia"
  end
end
