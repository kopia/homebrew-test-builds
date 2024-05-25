# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240524.0.232204"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240524.0.232204/kopia-20240524.0.232204-macOS-x64.tar.gz"
    sha256 "cdaf32fab1d7d5fb1754c4d15ac6da9fce7ce00d83e5228df8cfcb78baa58600"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240524.0.232204/kopia-20240524.0.232204-macOS-arm64.tar.gz"
    sha256 "f58f3afde867d26fe7406a3d82f540a8167d689610b4a59d2559aa348b7422c0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240524.0.232204/kopia-20240524.0.232204-linux-x64.tar.gz"
    sha256 "c69f54d4da2b191b2024e94dc2b04d4a760ee08702f3ed8306a061c51251c1b2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240524.0.232204/kopia-20240524.0.232204-linux-arm.tar.gz"
    sha256 "50e92108d28db4f1f42de8606403951d4c8c84e427f905b79cf28808b78113d0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240524.0.232204/kopia-20240524.0.232204-linux-arm64.tar.gz"
    sha256 "0737974936ee6d302511c0255bc0f37a0687fc58696ece792efb952e2af31d71"
  end

  def install
    bin.install "kopia"
  end
end
