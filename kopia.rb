# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220303.0.210240"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220303.0.210240/kopia-20220303.0.210240-macOS-x64.tar.gz"
    sha256 "2db5ef0e656077057faf665fdebc7522bb540953766c35288c539a80788cdaff"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220303.0.210240/kopia-20220303.0.210240-macOS-arm64.tar.gz"
    sha256 "b11ce12ce1ed1b1cd5cff53e992d95f26e2c451b35d68cbe5771dda2c94cc3fe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220303.0.210240/kopia-20220303.0.210240-linux-x64.tar.gz"
    sha256 "c58d2e58b9e942855728493cdc2135732f23f00b6ad12dea2c85dfda300d7063"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220303.0.210240/kopia-20220303.0.210240-linux-arm.tar.gz"
    sha256 "8498ca62d05cd6bb7407028696f44c81a319ba05a4a2061770c2a2de44930c13"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220303.0.210240/kopia-20220303.0.210240-linux-arm64.tar.gz"
    sha256 "4f2192bb78da609e7d6f3b9f1e8d27e6f0c8d61d45f095d79f35a172b196f7c2"
  end

  def install
    bin.install "kopia"
  end
end
