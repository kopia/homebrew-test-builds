# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220526.0.5834"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.5834/kopia-20220526.0.5834-macOS-x64.tar.gz"
    sha256 "caae067551c450e8c6150bc2645e9b44648ade1a8a74fea5245b6ec02d8bbd0d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.5834/kopia-20220526.0.5834-macOS-arm64.tar.gz"
    sha256 "80c20bb0b11a5cc28be31f351fa1e370f41de13a2b151eb6123aca83ecf4b21f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.5834/kopia-20220526.0.5834-linux-x64.tar.gz"
    sha256 "b24df8f3c34f24bc6021b5b58476829fc522ae09579b6a6081b489b9ce64ec74"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.5834/kopia-20220526.0.5834-linux-arm.tar.gz"
    sha256 "b7a15df0aec5fe3dd77b816f9a0bc3e0837a84af131da59478c98148126a8b65"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.5834/kopia-20220526.0.5834-linux-arm64.tar.gz"
    sha256 "5e2e427749dde83474f03c16a3c53c882772be2d4f637f3e56388249b64f23ab"
  end

  def install
    bin.install "kopia"
  end
end
