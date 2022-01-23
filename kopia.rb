# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220123.0.145613"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.145613/kopia-20220123.0.145613-macOS-x64.tar.gz"
    sha256 "3ee438ca959d242c1c2de363a729d2d412236115069590d2335351271a5f79af"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.145613/kopia-20220123.0.145613-macOS-arm64.tar.gz"
    sha256 "e00a8fa61cc24c3a417b8f18091c392a0e8bc69da8f960889f043ca4886f6a37"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.145613/kopia-20220123.0.145613-linux-x64.tar.gz"
    sha256 "290443ec2a494be47692f5e41f425b7d4a4367a9bcb96e0e8f4d9ac15176ffcd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.145613/kopia-20220123.0.145613-linux-arm.tar.gz"
    sha256 "c4acb77592c673ea9bc30b86327d10793dcd30d0256291776b47bfbaa3841266"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.145613/kopia-20220123.0.145613-linux-arm64.tar.gz"
    sha256 "944bd1f4d29329ec7ebf418b1b29bb4295a70d0e942fd143e1ff5e31d35d96ff"
  end

  def install
    bin.install "kopia"
  end
end
