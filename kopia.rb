# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221031.0.224237"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221031.0.224237/kopia-20221031.0.224237-macOS-x64.tar.gz"
    sha256 "511377280ef9d8d5fb9fd0ab3445f0fb0679f648901e1a2c2bd261348e5c5a09"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221031.0.224237/kopia-20221031.0.224237-macOS-arm64.tar.gz"
    sha256 "fc4b58a51a9b4581a9fe33d90f6b387e867057bcac959404721e4b783bd7c727"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221031.0.224237/kopia-20221031.0.224237-linux-x64.tar.gz"
    sha256 "7cb7e61328eba1b51712c36a873d87c99611c57e5f4683b62b6a18f56730d4bb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221031.0.224237/kopia-20221031.0.224237-linux-arm.tar.gz"
    sha256 "987c34abc3a23fbf65ad1d48b335d9194f1a7167a2db7ee40b83927df7246fb6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221031.0.224237/kopia-20221031.0.224237-linux-arm64.tar.gz"
    sha256 "e15fd94519eaf35c881cfcfd21d08787e2adad565e291f9bbd4fcc1739650717"
  end

  def install
    bin.install "kopia"
  end
end
