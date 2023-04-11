# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230411.0.155820"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230411.0.155820/kopia-20230411.0.155820-macOS-x64.tar.gz"
    sha256 "5ce354f281ef3741c7f849e06cc33bf53f36501424d6e110c8fd53dbb98e9a4d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230411.0.155820/kopia-20230411.0.155820-macOS-arm64.tar.gz"
    sha256 "45978bea54095e99c4f017401ee0242bd9f32dc0bf9d0975fcfb90b187e75076"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230411.0.155820/kopia-20230411.0.155820-linux-x64.tar.gz"
    sha256 "64bceb39599d1269f12164f0dae2347bed7abfb650edebce324ddd51eb585734"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230411.0.155820/kopia-20230411.0.155820-linux-arm.tar.gz"
    sha256 "90106a225b05b8281a500d08030dbbbbc44aed60dd75e5f5490b4561f9819bf1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230411.0.155820/kopia-20230411.0.155820-linux-arm64.tar.gz"
    sha256 "6d7e7a1aa10524c7655eed607529bd7b273d09c9e87b1a43a6506695016da869"
  end

  def install
    bin.install "kopia"
  end
end
