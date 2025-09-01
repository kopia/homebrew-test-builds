# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250826.0.172541"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250826.0.172541/kopia-20250826.0.172541-macOS-x64.tar.gz"
    sha256 "7defdeca609396d09fa98c5f4df4d0646f14fac71bf7954905a88dda70df9106"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250826.0.172541/kopia-20250826.0.172541-macOS-arm64.tar.gz"
    sha256 "2fc6c450bae134a6f79d8789c19ec48e844d58110936594a0faced3977ad94a0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250826.0.172541/kopia-20250826.0.172541-linux-x64.tar.gz"
    sha256 "640d1408261c4325c99eb55d9d77da9a631a16f33e1833b52e8ae50dbc713cbe"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250826.0.172541/kopia-20250826.0.172541-linux-arm.tar.gz"
    sha256 "b63848f4d6cece7ddb4d96e088ab79fc30f67d2b0c5aef07fad3efe6b79d2970"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250826.0.172541/kopia-20250826.0.172541-linux-arm64.tar.gz"
    sha256 "79245f0a3f6e1e4a776b1e8875abd37071589582b7e89904a7e01c609cc39091"
  end

  def install
    bin.install "kopia"
  end
end
