# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250601.0.65449"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.65449/kopia-20250601.0.65449-macOS-x64.tar.gz"
    sha256 "d732e100195a1cad1c4d54ebc5a990cab1528a207bb4aa43e0766b03d66f56a0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.65449/kopia-20250601.0.65449-macOS-arm64.tar.gz"
    sha256 "a99148a6a4b8e48c2f5c9740e4fdd17624f66061439c7a37c21cdbdbe301af4a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.65449/kopia-20250601.0.65449-linux-x64.tar.gz"
    sha256 "3617a92607dfd22e4b4becd0235e4b7df975624df0be48f2c1e9dd88732682fc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.65449/kopia-20250601.0.65449-linux-arm.tar.gz"
    sha256 "f294fe4db763fbfd5b578d14884d9f24109e780bbf5926e8d9e765136f770dd4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.65449/kopia-20250601.0.65449-linux-arm64.tar.gz"
    sha256 "c03efcada6a88071ed0ccfa206d7d366878592b9a20491a455e625f7796e78f5"
  end

  def install
    bin.install "kopia"
  end
end
