# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.214654"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.214654/kopia-20210406.0.214654-macOS-x64.tar.gz"
    sha256 "973dda5de548385e77a800d2e1b0835661bb831584fbafe95691d0c5f7d4a49a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.214654/kopia-20210406.0.214654-macOS-arm64.tar.gz"
    sha256 "ca2a9353e14e34a88440aa765414b15f414ca75eecb97c7dcc4973babee3757f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.214654/kopia-20210406.0.214654-linux-x64.tar.gz"
    sha256 "cddbb07862016683583a9838eb61b17dfa113938653aae104270f9f6bb13ca51"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.214654/kopia-20210406.0.214654-linux-arm.tar.gz"
    sha256 "58de8c4c817db6c15dc575cd9e687f267f84c97c41091d653abd270f164d16de"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.214654/kopia-20210406.0.214654-linux-arm64.tar.gz"
    sha256 "603566d71b779a87865d6864ad55915fe83095792e9f37c8b9bb47ee25c6a6fc"
  end

  def install
    bin.install "kopia"
  end
end
