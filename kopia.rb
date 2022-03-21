# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220320.0.222103"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220320.0.222103/kopia-20220320.0.222103-macOS-x64.tar.gz"
    sha256 "ce8bb5b4cd114e3cea8e9d4966f15d49f8d8d0e14827664c0be6c309dc01cfd9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220320.0.222103/kopia-20220320.0.222103-macOS-arm64.tar.gz"
    sha256 "1a6bfa2681638029f021c2b216dc7340c5737037814716e9911e13d811488788"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220320.0.222103/kopia-20220320.0.222103-linux-x64.tar.gz"
    sha256 "1eccc5ada339ae475bae7dc1dfb6be759200899a12be4306c94929e94eb4f60c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220320.0.222103/kopia-20220320.0.222103-linux-arm.tar.gz"
    sha256 "251b758cbc9e6e29f534a48e2c51c3e26bfa911cba55f7eed7b2f39b4964cb62"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220320.0.222103/kopia-20220320.0.222103-linux-arm64.tar.gz"
    sha256 "7f406a44b040d7c99b59fe1893a9726691b61cc7eee048abd0c1d678aa7ba9dc"
  end

  def install
    bin.install "kopia"
  end
end
