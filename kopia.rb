# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240927.0.102416"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240927.0.102416/kopia-20240927.0.102416-macOS-x64.tar.gz"
    sha256 "c8f60d4f472f1c3f78b14fd6c3b0e716cc39d9ca4da665c8df3c0dc405e545e2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240927.0.102416/kopia-20240927.0.102416-macOS-arm64.tar.gz"
    sha256 "2c5c7b33be4d967c83c13bad0db33649a19a35878cd02f7a41e42ef2346ff2c2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240927.0.102416/kopia-20240927.0.102416-linux-x64.tar.gz"
    sha256 "61c30eb0ab50e0bafaa0a4c4b7f1d2645b037364c50d27ef708b86689af83685"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240927.0.102416/kopia-20240927.0.102416-linux-arm.tar.gz"
    sha256 "4d4b1f090228ec2f91840fa9e87564750d6e39a50aae39ce49d55f4a101b0517"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240927.0.102416/kopia-20240927.0.102416-linux-arm64.tar.gz"
    sha256 "bdc51661c755150369283ee1a426f29211a966759144e18639d012500fa168aa"
  end

  def install
    bin.install "kopia"
  end
end
