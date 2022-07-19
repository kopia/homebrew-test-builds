# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220719.0.110629"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220719.0.110629/kopia-20220719.0.110629-macOS-x64.tar.gz"
    sha256 "5d7cfb92a6b4c4432c61df5e0e8d108ab3417ae6462409e23c7c458e52d20a8f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220719.0.110629/kopia-20220719.0.110629-macOS-arm64.tar.gz"
    sha256 "56fa0c0ab03a80ca03a732d0bda21d165a7cf69038ac0283dae74a63cae83030"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220719.0.110629/kopia-20220719.0.110629-linux-x64.tar.gz"
    sha256 "e49fa7b1ff3671857d3f32b8ee22d19871556d512db6a5cc372f52363b41b928"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220719.0.110629/kopia-20220719.0.110629-linux-arm.tar.gz"
    sha256 "944660696e19bd5a8a84a1eeadc82a3f18dbe22efcc4b8c5aea7431b180080b1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220719.0.110629/kopia-20220719.0.110629-linux-arm64.tar.gz"
    sha256 "8f1f4fcc03a11cd15c6c0a9d2514ff98e4279bb6fb0bbd54044423d5f1af4b86"
  end

  def install
    bin.install "kopia"
  end
end
