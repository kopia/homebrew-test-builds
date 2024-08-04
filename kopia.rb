# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240804.0.10445"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240804.0.10445/kopia-20240804.0.10445-macOS-x64.tar.gz"
    sha256 "a22af508c8298ed859762f6ddc02e088954767644da077c8159ae1bbbe170241"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240804.0.10445/kopia-20240804.0.10445-macOS-arm64.tar.gz"
    sha256 "1bbe63990bd23d4dfa1b476a8e2f3e513fd0ce2e06ca48a8f37539ac9775edb0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240804.0.10445/kopia-20240804.0.10445-linux-x64.tar.gz"
    sha256 "2865486f55125a10b3240ccec58623686dbcf926ed75ffb650b968750e5b71b8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240804.0.10445/kopia-20240804.0.10445-linux-arm.tar.gz"
    sha256 "30737ff756508a022685c9846551e608db1b4f20032d2e0f6a2a34086f62bd44"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240804.0.10445/kopia-20240804.0.10445-linux-arm64.tar.gz"
    sha256 "48657d480207c462c6b68735b2a0ea466dab0c6a8ac8e12e2a093b5cefcf766e"
  end

  def install
    bin.install "kopia"
  end
end
