# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211006.0.72842"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.72842/kopia-20211006.0.72842-macOS-x64.tar.gz"
    sha256 "24ceaf13aa1d369156fa3442734d926bb4e4a34efa7ef6f396d1a634e7ca0824"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.72842/kopia-20211006.0.72842-macOS-arm64.tar.gz"
    sha256 "481470c1ce5cdb32cc566cdee09b0a12f1ce822eee7029b4057e584d6dba2bea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.72842/kopia-20211006.0.72842-linux-x64.tar.gz"
    sha256 "18d755ff47b79bfc297822567c686baa310556aa5f43d0afd50a905cf4239cc7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.72842/kopia-20211006.0.72842-linux-arm.tar.gz"
    sha256 "2732a4bf0b9dc1f431d060749349a48ed70fdf07bef8c78b66fb8d7ea87411ce"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.72842/kopia-20211006.0.72842-linux-arm64.tar.gz"
    sha256 "4af382d74425fd7474b8cdda6bdf7d9cedb4b6a097c5a102a0234886ab89a0b5"
  end

  def install
    bin.install "kopia"
  end
end
