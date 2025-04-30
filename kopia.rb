# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250430.0.70407"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.70407/kopia-20250430.0.70407-macOS-x64.tar.gz"
    sha256 "79155611b50f0e863f13e32ef45721c26cdbbf7d6bf8bc6258cf38257e21951a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.70407/kopia-20250430.0.70407-macOS-arm64.tar.gz"
    sha256 "145f80754c23d50c6958875e6f836e707bd146963bab1b30497b198809d8236c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.70407/kopia-20250430.0.70407-linux-x64.tar.gz"
    sha256 "c8926c3885dd346e04b29b590dd5f674f95726dcfb061f3c8e555a1b4d07c188"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.70407/kopia-20250430.0.70407-linux-arm.tar.gz"
    sha256 "783fa024d36de9407d8b42ad1753c53a0a19ba3d275761095cde23b84db4059b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.70407/kopia-20250430.0.70407-linux-arm64.tar.gz"
    sha256 "84566c281364b55a9fc6ead0cdcf4b970caffe0cbf6d19820b03408743d5e2f6"
  end

  def install
    bin.install "kopia"
  end
end
