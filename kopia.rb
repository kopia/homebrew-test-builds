# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220807.0.153637"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220807.0.153637/kopia-20220807.0.153637-macOS-x64.tar.gz"
    sha256 "f0c5bf2a0fa366a5138c019cd222ae66d6d1c831594a84056a3ada7115ef7c4e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220807.0.153637/kopia-20220807.0.153637-macOS-arm64.tar.gz"
    sha256 "786bc3e75ae92ff92484df9ed75924e021a3a7b19b360d9f8979392775bb4da6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220807.0.153637/kopia-20220807.0.153637-linux-x64.tar.gz"
    sha256 "a3e64b9ff670897079c94bdc0b040cf69309a4303df4bb2b7c4085b2d9e8d423"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220807.0.153637/kopia-20220807.0.153637-linux-arm.tar.gz"
    sha256 "1b3719e9762def87b455fe65281fa4d1d92730d7c7b040d3a2ff01341b9c0064"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220807.0.153637/kopia-20220807.0.153637-linux-arm64.tar.gz"
    sha256 "7bf57d6e129ce79570b42b16e4ab29e6fc2741215618c6dff9213561e9bfa493"
  end

  def install
    bin.install "kopia"
  end
end
