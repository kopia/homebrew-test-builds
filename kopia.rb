# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260909.0.32423"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.32423/kopia-20260909.0.32423-macOS-x64.tar.gz"
    sha256 "1644803cc7444ee0adc4c2e76502bdc7540ed1ae750b2f0a4adcbb884d64dd2b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.32423/kopia-20260909.0.32423-macOS-arm64.tar.gz"
    sha256 "eba39e867c205805ded50e03ee699982c76a40edaefce08f41a5cfe5ad74da33"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.32423/kopia-20260909.0.32423-linux-x64.tar.gz"
    sha256 "b025d9592113ea3b3865b07ba935f07c047edb433a625a60406b67732a385ce4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.32423/kopia-20260909.0.32423-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.32423/kopia-20260909.0.32423-linux-arm64.tar.gz"
    sha256 "0425c6353035939638a34ddc72f6339fbaa6c7d4d4961784aa8d11dfcdd1f53c"
  end

  def install
    bin.install "kopia"
  end
end
