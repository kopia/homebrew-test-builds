# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220810.0.20502"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220810.0.20502/kopia-20220810.0.20502-macOS-x64.tar.gz"
    sha256 "4ec04fc5a737d1018566e9af3f3681b450715af645483ff0f736d5a816efc58d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220810.0.20502/kopia-20220810.0.20502-macOS-arm64.tar.gz"
    sha256 "16db2c9c2f275c73a7cec98b1b891e521ef0b9a2762f5b958d47c10401eafbfa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220810.0.20502/kopia-20220810.0.20502-linux-x64.tar.gz"
    sha256 "73d5dad8c96e2e734ff7f5e07152c62ab7d4c1f13ff22c1307632da904e11d94"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220810.0.20502/kopia-20220810.0.20502-linux-arm.tar.gz"
    sha256 "57705977d98d47b5dfa63874f82f2f4b958e3096a928bc5aafc3c837a60870e9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220810.0.20502/kopia-20220810.0.20502-linux-arm64.tar.gz"
    sha256 "23387e8ffda91e372e63c16d3d6198bf8b13330c9a06b8933b0df07d5ecbc7e7"
  end

  def install
    bin.install "kopia"
  end
end
