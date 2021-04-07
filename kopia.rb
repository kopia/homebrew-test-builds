# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210407.0.93309"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.93309/kopia-20210407.0.93309-macOS-x64.tar.gz"
    sha256 "7383a37ee8d928f088ab0db50b2826864766d3153881da53042d9abc3b697fa7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.93309/kopia-20210407.0.93309-macOS-arm64.tar.gz"
    sha256 "563c7964506a0bfcb31b82b1e6d9675d0812409a608b77307963eac92dfd1f7b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.93309/kopia-20210407.0.93309-linux-x64.tar.gz"
    sha256 "ef770a354a3b1ca8df4c75f8eac8392f0fb7b0f011beab40d6927a8c0e6b1c70"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.93309/kopia-20210407.0.93309-linux-arm.tar.gz"
    sha256 "db1625c7af78a387bf6ae7448860a8049b980c39b79183ed993600303bfa93fa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.93309/kopia-20210407.0.93309-linux-arm64.tar.gz"
    sha256 "eefc0e3281151b6fb2103988a5043fad003d86e6367db3d03338fb8bfdde0ea9"
  end

  def install
    bin.install "kopia"
  end
end
