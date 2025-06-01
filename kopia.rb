# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250601.0.61818"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.61818/kopia-20250601.0.61818-macOS-x64.tar.gz"
    sha256 "bd525a2512382763ff3f3d6af5b9c69d2b96818a4f2a92d8ec7dab2e85a816ab"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.61818/kopia-20250601.0.61818-macOS-arm64.tar.gz"
    sha256 "0703a9f7f2cdf0ec513128078e4df290b738c9108f9e49b844cb0391b76b1f1e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.61818/kopia-20250601.0.61818-linux-x64.tar.gz"
    sha256 "10956fb509c1344de819746c95b5304a0d2cf6240b0803b8b9f5264926363430"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.61818/kopia-20250601.0.61818-linux-arm.tar.gz"
    sha256 "03f60f7d7f897be8f5f78efe1f5b6bdf7d41dc0e82f81e3222d281089aa14854"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.61818/kopia-20250601.0.61818-linux-arm64.tar.gz"
    sha256 "c52ded8b9f7d306a6916fce0e4ffb257644a1612c176e2653524ddf65c95f50b"
  end

  def install
    bin.install "kopia"
  end
end
