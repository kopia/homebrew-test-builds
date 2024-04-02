# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240401.0.231620"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.231620/kopia-20240401.0.231620-macOS-x64.tar.gz"
    sha256 "d235870be245465929a86d449f1da1b1971473a29eea309ef5361a2bb720e37b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.231620/kopia-20240401.0.231620-macOS-arm64.tar.gz"
    sha256 "33317d2ecb797c55fff77f0947fd133acc7ef7b91eeacb6c85818e3ad08b0439"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.231620/kopia-20240401.0.231620-linux-x64.tar.gz"
    sha256 "904543727be1f4b82719a333c0eeaa82b7cb57e4187f25e55218ebf51fd83eb1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.231620/kopia-20240401.0.231620-linux-arm.tar.gz"
    sha256 "2d23ae9a5d1a06aa2e0062cd6e7a561cb622bac22f298103ca971b9e95a4d4b1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.231620/kopia-20240401.0.231620-linux-arm64.tar.gz"
    sha256 "1742fbc03240d5620090e487c359485c97959309a333b842ad6992156f2bd7b2"
  end

  def install
    bin.install "kopia"
  end
end
