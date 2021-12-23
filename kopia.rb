# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211223.0.120955"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211223.0.120955/kopia-20211223.0.120955-macOS-x64.tar.gz"
    sha256 "c1645020946113923c1b34ca1d8079bc51c8686e74641f27ac9ebe9a376fe221"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211223.0.120955/kopia-20211223.0.120955-macOS-arm64.tar.gz"
    sha256 "b1430812cfcf69f249d80dc1d968ae2074c8a16ac146cd006534165fb516a872"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211223.0.120955/kopia-20211223.0.120955-linux-x64.tar.gz"
    sha256 "891f2b10a6b6b1a031f5673482caceef7b5032a181a025df27c1537321e16af1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211223.0.120955/kopia-20211223.0.120955-linux-arm.tar.gz"
    sha256 "6ab5b0abb613c6d702e4f9c4bc7acc298c5bdd48c4d2e69c5c0a9453641875e4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211223.0.120955/kopia-20211223.0.120955-linux-arm64.tar.gz"
    sha256 "626e3bea9f641056fe6052cda8dd5895f7acf9318e840ab15933d3fdba46b390"
  end

  def install
    bin.install "kopia"
  end
end
