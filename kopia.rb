# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240920.0.144253"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240920.0.144253/kopia-20240920.0.144253-macOS-x64.tar.gz"
    sha256 "929c21fa8598a703aa00be9a73e1abaa6e1a5286ecf7dbd9d155c694c4aff887"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240920.0.144253/kopia-20240920.0.144253-macOS-arm64.tar.gz"
    sha256 "4a3594956bd72992b07b7d60f8d0cb2f42055a248eacee36e11e4feaea68cd45"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240920.0.144253/kopia-20240920.0.144253-linux-x64.tar.gz"
    sha256 "35e81e81666e481b2f05498232b389dac15a2ce2e678cf3aae019fced6728693"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240920.0.144253/kopia-20240920.0.144253-linux-arm.tar.gz"
    sha256 "2b9135411fe2c554d8c0b802576db19135e77b6d51911cbf8b00c60adb9a86dd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240920.0.144253/kopia-20240920.0.144253-linux-arm64.tar.gz"
    sha256 "859987206ee44b1629aa98f9544e85bfab9196877c3ac0acd0d704eba7ef4129"
  end

  def install
    bin.install "kopia"
  end
end
