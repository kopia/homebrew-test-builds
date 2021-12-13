# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211213.0.133315"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.133315/kopia-20211213.0.133315-macOS-x64.tar.gz"
    sha256 "ddea50e6e40257eeb8dd6f4e7be9d72d38721c68ae0ee0f0b65113a0007397cb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.133315/kopia-20211213.0.133315-macOS-arm64.tar.gz"
    sha256 "970abf3d34469897a609432429c85798e97edf31b68d97bb399115a1dfa0be89"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.133315/kopia-20211213.0.133315-linux-x64.tar.gz"
    sha256 "3d3d6ca722784962e2aeb7e43bfb7d1eac8b8b99c1bc5bd75143c47e2d3d6b55"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.133315/kopia-20211213.0.133315-linux-arm.tar.gz"
    sha256 "8c8b36aa2e56db1320481eca9db517c703a41f81250305dc82e4a6ee6a79bf20"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.133315/kopia-20211213.0.133315-linux-arm64.tar.gz"
    sha256 "41f39d1e42db2410b0c5695d9ecc86ea65eba19cc1e79eb1bd54993ad317e91b"
  end

  def install
    bin.install "kopia"
  end
end
