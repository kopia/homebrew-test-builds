# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251119.0.51736"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.51736/kopia-20251119.0.51736-macOS-x64.tar.gz"
    sha256 "3bf3a4b441b755c97b3706518dea6eaaa735d727aac93ab5187928f537d38f1a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.51736/kopia-20251119.0.51736-macOS-arm64.tar.gz"
    sha256 "09e75067664470c94962a61b794bb4a974bc5fd5d6dafbe30f0585d2b7730ec7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.51736/kopia-20251119.0.51736-linux-x64.tar.gz"
    sha256 "3ceba3766d9f26c4c2d5d3d07e8f551f70f2ab6fdb8035c5a6502d715ba2b937"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.51736/kopia-20251119.0.51736-linux-arm.tar.gz"
    sha256 "b3899fb29ba28aca6d140d2bba042244caed21a90d051cfef695cfc6573ba5e2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.51736/kopia-20251119.0.51736-linux-arm64.tar.gz"
    sha256 "1f1fe0d80982358cf8e4c0c633fb1bea93b7241638fac82ddbe43254e7cbd6a8"
  end

  def install
    bin.install "kopia"
  end
end
