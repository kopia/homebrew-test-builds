# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260909.0.233006"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.233006/kopia-20260909.0.233006-macOS-x64.tar.gz"
    sha256 "418a088be930d111d783d6ad6af4345fe02c1ebb4ce123d8cbc4c56e67261fda"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.233006/kopia-20260909.0.233006-macOS-arm64.tar.gz"
    sha256 "06272d3844307d158533d9a6f320ca38b2d78f67ae95e4df477baf61d09e4988"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.233006/kopia-20260909.0.233006-linux-x64.tar.gz"
    sha256 "aa92eba27a491b638f6358583faa7d5100368cf390cea3f66a74ca9aa24ef187"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.233006/kopia-20260909.0.233006-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.233006/kopia-20260909.0.233006-linux-arm64.tar.gz"
    sha256 "5235ee56ec2db77c6cbd7c0621e8aca03af9131079d641751d5eb0c09e552d56"
  end

  def install
    bin.install "kopia"
  end
end
