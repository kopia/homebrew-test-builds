# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230918.0.135757"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230918.0.135757/kopia-20230918.0.135757-macOS-x64.tar.gz"
    sha256 "f78b3778afea88a6a7d968da9b11d07251fc3ad6b647804c5588a9b64f4a8cdb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230918.0.135757/kopia-20230918.0.135757-macOS-arm64.tar.gz"
    sha256 "2d74f4a4a66ff2005c0fcfc51a859936362f1b2847a15cf11e78af824399ed0d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230918.0.135757/kopia-20230918.0.135757-linux-x64.tar.gz"
    sha256 "cc181df1a8a8890c095e63a112792c35f06a0d85ace6398b622a992150e9a93f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230918.0.135757/kopia-20230918.0.135757-linux-arm.tar.gz"
    sha256 "ff5dd7ca7afff2b3cb3224b538e2e0bf23863629f9c29c3df12ecf15cb662046"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230918.0.135757/kopia-20230918.0.135757-linux-arm64.tar.gz"
    sha256 "7c1de44550e24d4ee8903226ba5b98e48fff4f8880caeecc4033d3ac75122e8e"
  end

  def install
    bin.install "kopia"
  end
end
