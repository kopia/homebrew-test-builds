# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250602.0.2049"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.2049/kopia-20250602.0.2049-macOS-x64.tar.gz"
    sha256 "5d631661df1418359b23a54adca12e9c3077638d088c56aa51c0c028c02ea8b6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.2049/kopia-20250602.0.2049-macOS-arm64.tar.gz"
    sha256 "667ede299044382c877e00c7792b4d55371cca4e360438a5e2b56014d09292f0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.2049/kopia-20250602.0.2049-linux-x64.tar.gz"
    sha256 "99020b0cb4b51530883a07bb08a5091b72c9d310a03dac331801d5dc9fbdac24"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.2049/kopia-20250602.0.2049-linux-arm.tar.gz"
    sha256 "dc3aa94edbe1234a4a8a20b1dcf8512d5885e245235044b6e13594f2cdbbca88"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.2049/kopia-20250602.0.2049-linux-arm64.tar.gz"
    sha256 "4af2603f97a0967792ce224e4b83ff0c0144b77f294b3c3e65bae20445d2bb41"
  end

  def install
    bin.install "kopia"
  end
end
