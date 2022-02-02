# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220201.0.194140"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.194140/kopia-20220201.0.194140-macOS-x64.tar.gz"
    sha256 "d9c5953f24abc84dc231486f46309eb73a9b11243f871b0d942883a212121ca9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.194140/kopia-20220201.0.194140-macOS-arm64.tar.gz"
    sha256 "cacc8865eba8c5bf8a314e0ecd325c7ddd820d2b43850d88c3948ed1a9209b51"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.194140/kopia-20220201.0.194140-linux-x64.tar.gz"
    sha256 "64cdc95f8ae369d4011689490f1c1a74aec72db9aa453c2d4c11ffaff0a0aa31"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.194140/kopia-20220201.0.194140-linux-arm.tar.gz"
    sha256 "05bbcc7d4ef897523db49f635d94be06f3ab9b784f52c220c83e97628c5da2bf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.194140/kopia-20220201.0.194140-linux-arm64.tar.gz"
    sha256 "1e3657fe1b7e5ea5a307d00f9801183e12fda29b69fb2a47c0c12b75b6969edb"
  end

  def install
    bin.install "kopia"
  end
end
