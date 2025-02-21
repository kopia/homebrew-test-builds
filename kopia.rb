# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250220.0.195611"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250220.0.195611/kopia-20250220.0.195611-macOS-x64.tar.gz"
    sha256 "20fc76315075638721bfebad89bf86d9f33e4d93b770310b1fb62c397f047c9e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250220.0.195611/kopia-20250220.0.195611-macOS-arm64.tar.gz"
    sha256 "8c0b22d5f1e9fa431c139a76d90e4131817473c23c032c666677ca76aa3e6939"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250220.0.195611/kopia-20250220.0.195611-linux-x64.tar.gz"
    sha256 "e4fe82e64a997b0cd4db0a3028d3d8fd3cc923a1dbdfaa55c9e0e8d972adc519"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250220.0.195611/kopia-20250220.0.195611-linux-arm.tar.gz"
    sha256 "3b70be060b11fa9218bd2b62bed13cb35f3a1850b06f02d00a740295f711ec18"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250220.0.195611/kopia-20250220.0.195611-linux-arm64.tar.gz"
    sha256 "3fde31236e1e8619aac22ace8fc20333793f1ff38c046eeb530c4c62cc2dab1a"
  end

  def install
    bin.install "kopia"
  end
end
