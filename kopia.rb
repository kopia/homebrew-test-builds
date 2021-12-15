# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211215.0.70628"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211215.0.70628/kopia-20211215.0.70628-macOS-x64.tar.gz"
    sha256 "ce64660918f3ca3652d8fbd2f256f09e3ac0ed8e5f2ffd1dc5c60e81e74ab143"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211215.0.70628/kopia-20211215.0.70628-macOS-arm64.tar.gz"
    sha256 "8c8fffb69e82748328ba0f0b6b31b0f6801e309ad8f7db0fa3b904f4ad6b8855"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211215.0.70628/kopia-20211215.0.70628-linux-x64.tar.gz"
    sha256 "e1aab4aba6a5ca367346089e9b562a6779f2ffe2e47a70f5048d9c990103e22e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211215.0.70628/kopia-20211215.0.70628-linux-arm.tar.gz"
    sha256 "f57ec6ab8321ac2ad318787ebe7185137f01feb3a3220fee30fdf443ccff241c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211215.0.70628/kopia-20211215.0.70628-linux-arm64.tar.gz"
    sha256 "db7c4cdb6aa05e2f9b5bc076cff8bcf081138429a28868c48fd0e01769ebd1a9"
  end

  def install
    bin.install "kopia"
  end
end
