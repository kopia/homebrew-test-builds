# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250513.0.41433"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.41433/kopia-20250513.0.41433-macOS-x64.tar.gz"
    sha256 "8c2e21ae023489080e1376fc6aab2f373524e5d8dbce24a7688a1cd7985b25f7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.41433/kopia-20250513.0.41433-macOS-arm64.tar.gz"
    sha256 "a6ba3d214b573f0c6a22ce535e2f09074f371c7cbcd50916db503797f778cf99"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.41433/kopia-20250513.0.41433-linux-x64.tar.gz"
    sha256 "c870f27dd776bbcd8195864f96e4d8ca4ff6e705c3c1c5e7e901a17e4a3d7418"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.41433/kopia-20250513.0.41433-linux-arm.tar.gz"
    sha256 "6745732c00b7cf00940e29f1a1229a5907a6b11db1a52b153d6d67f8ca2214e4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.41433/kopia-20250513.0.41433-linux-arm64.tar.gz"
    sha256 "b3e0e2f82b9803d3cb6f0542e513f9c8fb905361c45f066d76f963070b401555"
  end

  def install
    bin.install "kopia"
  end
end
