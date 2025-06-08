# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250608.0.63843"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250608.0.63843/kopia-20250608.0.63843-macOS-x64.tar.gz"
    sha256 "070314fd9f240fed7802422055a5d3852d482aedc7cf8860baf53ce4adc6b983"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250608.0.63843/kopia-20250608.0.63843-macOS-arm64.tar.gz"
    sha256 "7940fe3bbdc395eb1aaaf9151838876b5421c055d892204e0ca8a97892c8302c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250608.0.63843/kopia-20250608.0.63843-linux-x64.tar.gz"
    sha256 "9044a1589e67d8b277a35b9ee8f6f09cff5b67769573a0d498862f13a6ad5a6c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250608.0.63843/kopia-20250608.0.63843-linux-arm.tar.gz"
    sha256 "61bc091342bc3adab9267516df10ea90bc7102268f74ca6def28ceb3c0f2530a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250608.0.63843/kopia-20250608.0.63843-linux-arm64.tar.gz"
    sha256 "d32c8154e5472e10e5af7e67ee707af8757fce55828cfadfb6a4edcfcde9da35"
  end

  def install
    bin.install "kopia"
  end
end
