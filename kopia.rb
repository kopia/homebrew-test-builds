# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250529.0.75715"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.75715/kopia-20250529.0.75715-macOS-x64.tar.gz"
    sha256 "4d881447674562114cd476244f4eb875ddb7875d3e24d761d79afc62886e5e79"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.75715/kopia-20250529.0.75715-macOS-arm64.tar.gz"
    sha256 "cb9d6c80fd3a464c935d27ce90122523879af71a7934c7a2042c46b36c7f1173"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.75715/kopia-20250529.0.75715-linux-x64.tar.gz"
    sha256 "77d8150f7ba05d9ebc906dac9b2471ab5c85be44ca042b1ded7a76b97beb87c7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.75715/kopia-20250529.0.75715-linux-arm.tar.gz"
    sha256 "406fbd54dcabc1ec5dcfb63e1366093e80e147d08eb75d225244a0a8d6eadaa1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.75715/kopia-20250529.0.75715-linux-arm64.tar.gz"
    sha256 "9504a78457c3be25660f07160b4b9adab8b56d40c9ac4c2667b2f5e20887e3a4"
  end

  def install
    bin.install "kopia"
  end
end
