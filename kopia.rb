# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250925.0.175035"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250925.0.175035/kopia-20250925.0.175035-macOS-x64.tar.gz"
    sha256 "39f2a2e6276dfcab6e428202dc431c5b87efd0f509de3455c8263b0d21a57ed2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250925.0.175035/kopia-20250925.0.175035-macOS-arm64.tar.gz"
    sha256 "87c5d6104777b1826070384ec06b047b223ba2b990543fb26c7fee48e52be5e1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250925.0.175035/kopia-20250925.0.175035-linux-x64.tar.gz"
    sha256 "314833af711557a42bb52415904df392c61f2e9228cfe7f3ecbb76666004e468"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250925.0.175035/kopia-20250925.0.175035-linux-arm.tar.gz"
    sha256 "19defff2e96d79338a0d705eb0615c4eca3411530a49d3f54769b16eeb8dd2b1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250925.0.175035/kopia-20250925.0.175035-linux-arm64.tar.gz"
    sha256 "a7e00be5c6718eb400a21c86767c4c473a0440b24508df58f235c89f6ad5a658"
  end

  def install
    bin.install "kopia"
  end
end
