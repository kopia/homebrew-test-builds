# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211003.0.164029"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.164029/kopia-20211003.0.164029-macOS-x64.tar.gz"
    sha256 "d8490bc6fa4b56c0065d3ff757210fa233240b5e5f82d7a7461d229bb2be654b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.164029/kopia-20211003.0.164029-macOS-arm64.tar.gz"
    sha256 "cd2247d8f5440ef245b4fdeef8d91141bab91a399c536783e8415b96d5ca5055"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.164029/kopia-20211003.0.164029-linux-x64.tar.gz"
    sha256 "282d5f84d5e185ef4db9b90d1b034aa0911c55288a24401622004dcd7971606a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.164029/kopia-20211003.0.164029-linux-arm.tar.gz"
    sha256 "06d696955ef56639c4c1f1d7ee1f6616bfd2face73c6e1dae36047baf71d9209"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.164029/kopia-20211003.0.164029-linux-arm64.tar.gz"
    sha256 "7f3f91a7d440da47262ee1e923824ffe08645884c0266176b25c535a85485676"
  end

  def install
    bin.install "kopia"
  end
end
