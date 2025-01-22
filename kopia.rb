# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250122.0.93602"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.93602/kopia-20250122.0.93602-macOS-x64.tar.gz"
    sha256 "e589fbd11c87f163aee5939de80db4d39008b1c89f3ffc8e23b4b946fae708c7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.93602/kopia-20250122.0.93602-macOS-arm64.tar.gz"
    sha256 "78a61e561c876d12ce80c9ebdf8dac61acfdb08ffb25e1b7a2cc2e5bb2bde77c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.93602/kopia-20250122.0.93602-linux-x64.tar.gz"
    sha256 "7b1d94ba474721c4280164cb6a72638e73267ce789aa8082b518eae6aa8d407c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.93602/kopia-20250122.0.93602-linux-arm.tar.gz"
    sha256 "9596dfc6051dde54895e5de0d0d502e2f7c5790d6fa11c7d138b00e6df247c8f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.93602/kopia-20250122.0.93602-linux-arm64.tar.gz"
    sha256 "415ba5a98edb3d0853c4485e5c6ef8b04337b0bd06fefeb96233b0c27fc0431f"
  end

  def install
    bin.install "kopia"
  end
end
