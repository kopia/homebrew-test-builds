# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251125.0.60159"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.60159/kopia-20251125.0.60159-macOS-x64.tar.gz"
    sha256 "c4f36132ac7f5fa3011690bb18f63a3b8375b5d23b8f94c73994ce026dc17fb4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.60159/kopia-20251125.0.60159-macOS-arm64.tar.gz"
    sha256 "33bb17d9440140fe1cac59161249d62737bde09c789953b1e251230a005a8923"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.60159/kopia-20251125.0.60159-linux-x64.tar.gz"
    sha256 "7168d985c8ec93f8bc7b048b83a86e2e737f56f3d104495e4a0858cfc4f34489"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.60159/kopia-20251125.0.60159-linux-arm.tar.gz"
    sha256 "fefe7efa5bdeca23aec878cebe05bd9233b7d2ff11b8214dacaae9cef597ae23"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.60159/kopia-20251125.0.60159-linux-arm64.tar.gz"
    sha256 "44e2d18b957bea071fab036dddb09abeb84f6ed6a114c75a5ee76c315a895693"
  end

  def install
    bin.install "kopia"
  end
end
