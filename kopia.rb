# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210419.0.194410"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.194410/kopia-20210419.0.194410-macOS-x64.tar.gz"
    sha256 "cbb2fc200c9eae5fa8c6bbd5963711543d470b8302ccb364d69de71929d1e288"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.194410/kopia-20210419.0.194410-macOS-arm64.tar.gz"
    sha256 "bf2889b757d0e3d8f3fd8d0e2821fb9ec90b6a325f43e70782b2878181283906"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.194410/kopia-20210419.0.194410-linux-x64.tar.gz"
    sha256 "414bde836a084b8db2352897b94f8a8adfdefac8e3778a0916075a9e33d5675f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.194410/kopia-20210419.0.194410-linux-arm.tar.gz"
    sha256 "2b9053410a2741e7fb3fef9828522058fea4493ebe4fccca98e2e5e215569139"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.194410/kopia-20210419.0.194410-linux-arm64.tar.gz"
    sha256 "401d708185160739e6b047c40af38aba95cdca570d12d29e51c8024ea022a687"
  end

  def install
    bin.install "kopia"
  end
end
