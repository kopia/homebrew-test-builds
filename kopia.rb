# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211018.0.213900"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.213900/kopia-20211018.0.213900-macOS-x64.tar.gz"
    sha256 "477acab2902d5045467741e799d7d9fddbac25e558d9b016972f23b6a161f1d0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.213900/kopia-20211018.0.213900-macOS-arm64.tar.gz"
    sha256 "db564160245117fad2d2cd890216b8079e5f35430f6ea2b071512745625720c9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.213900/kopia-20211018.0.213900-linux-x64.tar.gz"
    sha256 "e64f5c85074117ab86028fa491cbd081928d50b3d6e50c7df84b99d6a7399025"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.213900/kopia-20211018.0.213900-linux-arm.tar.gz"
    sha256 "a74c17974d4b70009ee16f308d9de83e717cd06500b2069bac4474f2bae4dbb6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.213900/kopia-20211018.0.213900-linux-arm64.tar.gz"
    sha256 "b8c785fbbb96f3a0f3c7ea4159c0df1b85724248d76c58317eb2b9c6ca590bd2"
  end

  def install
    bin.install "kopia"
  end
end
