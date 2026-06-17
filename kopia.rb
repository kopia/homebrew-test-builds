# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260617.0.51325"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.51325/kopia-20260617.0.51325-macOS-x64.tar.gz"
    sha256 "624d1037f99ff001ede303cb827fdc931dcd4a725392f5ec8c2f20e0241599f3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.51325/kopia-20260617.0.51325-macOS-arm64.tar.gz"
    sha256 "f9fe3b66f27c973989aeaf3a89728bea4ccc20def5a58a0f23ab67b20083bdb0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.51325/kopia-20260617.0.51325-linux-x64.tar.gz"
    sha256 "fec47d81a3b19c468d6cceb5e76f3abd9716f1d09d670e683d30265e473590a3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.51325/kopia-20260617.0.51325-linux-arm.tar.gz"
    sha256 "08b0f11bb12190a04b248139bf03a5dcdfb045ffcc51811935dd87fec1d65db2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260617.0.51325/kopia-20260617.0.51325-linux-arm64.tar.gz"
    sha256 "497e887841cce3816dcc767fd12f751116ec138c6388de2e2f12fa7370914d2a"
  end

  def install
    bin.install "kopia"
  end
end
