# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250128.0.193716"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250128.0.193716/kopia-20250128.0.193716-macOS-x64.tar.gz"
    sha256 "a2fae0053c8d4aeec2170185f8b5e728c984c47fd2846d8e99fd6fda53b4bd87"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250128.0.193716/kopia-20250128.0.193716-macOS-arm64.tar.gz"
    sha256 "3ed4c7514f7e797c17c44d04628bf20d66c52cc3c95d08003e16cc05170ee4c8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250128.0.193716/kopia-20250128.0.193716-linux-x64.tar.gz"
    sha256 "86b9ff816391b28d8a78c6ad96d6af7098ba35c447e674c1d2c0099d966d3b77"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250128.0.193716/kopia-20250128.0.193716-linux-arm.tar.gz"
    sha256 "7c0720f88388af239ed24d38a6116d991daefbebe29fe87324469744b686b1c7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250128.0.193716/kopia-20250128.0.193716-linux-arm64.tar.gz"
    sha256 "af47468801c7ed6598e69cbb1258d44bbfd7d6e689556fcc6458b4f83de018a4"
  end

  def install
    bin.install "kopia"
  end
end
