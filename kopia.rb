# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220913.0.225257"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220913.0.225257/kopia-20220913.0.225257-macOS-x64.tar.gz"
    sha256 "403138751e62633bc0b5a3cb1d5dde7cb009ab6dc9df3c5fb58b73dc2f43d59a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220913.0.225257/kopia-20220913.0.225257-macOS-arm64.tar.gz"
    sha256 "6fa3be3e9092ff5f83b7976aebc2c9185c3a09d7b3c6f402ab733346571fb96a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220913.0.225257/kopia-20220913.0.225257-linux-x64.tar.gz"
    sha256 "ad44e8a30936b2fac89ac58cbbf850dd2da8fe371753ffce41fe68e605b4e44c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220913.0.225257/kopia-20220913.0.225257-linux-arm.tar.gz"
    sha256 "7d2b8125b2c6b85dd753a88919839aa1151edf9ce06cb78f716f00032fda7f61"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220913.0.225257/kopia-20220913.0.225257-linux-arm64.tar.gz"
    sha256 "37309a7d5072a9529fc8dcd2a7f0190db00398a045ea603820e4f6a78921002c"
  end

  def install
    bin.install "kopia"
  end
end
