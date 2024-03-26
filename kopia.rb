# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240325.0.222038"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240325.0.222038/kopia-20240325.0.222038-macOS-x64.tar.gz"
    sha256 "02b7e42df7303b962777990f75abf94e6ca41f5d03c7e903c13a2b54c6422132"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240325.0.222038/kopia-20240325.0.222038-macOS-arm64.tar.gz"
    sha256 "7af338ed759af4d4bc200e9a61b0f41cac011a988ced9b1aa8c389c3404b629f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240325.0.222038/kopia-20240325.0.222038-linux-x64.tar.gz"
    sha256 "b0aff90c5ac0233919b61eeb001485f067db2a674efff4814976162016f25a05"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240325.0.222038/kopia-20240325.0.222038-linux-arm.tar.gz"
    sha256 "919a350ea828cd2e4b953eb335d818c24ccd4b9522340d61f034386b00f3c4ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240325.0.222038/kopia-20240325.0.222038-linux-arm64.tar.gz"
    sha256 "358def44d2dcc9fa20fc5521793603a7543b43de65a4b610a3cd55abcd83d12e"
  end

  def install
    bin.install "kopia"
  end
end
