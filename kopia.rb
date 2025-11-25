# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251125.0.63251"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.63251/kopia-20251125.0.63251-macOS-x64.tar.gz"
    sha256 "030877321f65da8acaebaa4d331e5a0f778916333fbc5c763ccdde15fd50154d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.63251/kopia-20251125.0.63251-macOS-arm64.tar.gz"
    sha256 "66c7b9fbbde26cf898d3a3d756630a21806a03c91a6e098afa381a78cb5b86d8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.63251/kopia-20251125.0.63251-linux-x64.tar.gz"
    sha256 "891d6943035e142de872e72ec8bead609742f3cdf7533f4251372c0cf9dd0e43"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.63251/kopia-20251125.0.63251-linux-arm.tar.gz"
    sha256 "8d1061760d48f9a104311cbec035078cb50ee6a4d76f9d0223b283184f809a52"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.63251/kopia-20251125.0.63251-linux-arm64.tar.gz"
    sha256 "a6491e98c3fc46ce8fbded9fdac019492b5cffdbf17314a161641e6b752c03a2"
  end

  def install
    bin.install "kopia"
  end
end
