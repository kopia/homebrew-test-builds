# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211126.0.131044"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211126.0.131044/kopia-20211126.0.131044-macOS-x64.tar.gz"
    sha256 "cc1e68d0818285648672885f9ef2a88942b88d744d03878b517f0567ce249118"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211126.0.131044/kopia-20211126.0.131044-macOS-arm64.tar.gz"
    sha256 "73218346b88aaea71ce22523d5ce02b0ca231a718009b158cf9460289f69a93f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211126.0.131044/kopia-20211126.0.131044-linux-x64.tar.gz"
    sha256 "80a6a99e6610bf605241ee9f20932ebd8d215ba0f16842fd958e9d07532c91c1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211126.0.131044/kopia-20211126.0.131044-linux-arm.tar.gz"
    sha256 "2a1a767d45860ab74ea0b587149bda7a8c7c7dfe2790c6bba6dc2b2d2c7a2450"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211126.0.131044/kopia-20211126.0.131044-linux-arm64.tar.gz"
    sha256 "52881e89f30644e91404de35f2367e30ce828e69181ebaaef6274add7174a7fd"
  end

  def install
    bin.install "kopia"
  end
end
