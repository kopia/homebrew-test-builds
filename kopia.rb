# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220908.0.34212"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.34212/kopia-20220908.0.34212-macOS-x64.tar.gz"
    sha256 "f620f3cf90faa02128066f8fbd824427dce739533474b39afe887a82c01e2baa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.34212/kopia-20220908.0.34212-macOS-arm64.tar.gz"
    sha256 "8ba4bf7b03e611c90bc1427f5552885d7e34c573e1d56e0835f587d4203b4fab"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.34212/kopia-20220908.0.34212-linux-x64.tar.gz"
    sha256 "fe1bcc5b90d64b0b31ee4f667c5e5cf4cc1b6e15cf93f79471c69a4eabba0e22"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.34212/kopia-20220908.0.34212-linux-arm.tar.gz"
    sha256 "3ecc767930fbac5c1f1e99966875c371179f489455101bab5eed96d9c80363f3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.34212/kopia-20220908.0.34212-linux-arm64.tar.gz"
    sha256 "7da7772fb47bef5665310d04e0dedb57e68a58627dd9177896b998f8187353a2"
  end

  def install
    bin.install "kopia"
  end
end
