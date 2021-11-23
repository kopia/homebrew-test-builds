# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211122.0.203258"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211122.0.203258/kopia-20211122.0.203258-macOS-x64.tar.gz"
    sha256 "bec7db1bbaa7a53c272d1bd7c3bea7cd3452c50a254c17f975ee286d30f38c36"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211122.0.203258/kopia-20211122.0.203258-macOS-arm64.tar.gz"
    sha256 "e018cd7dced75d5f4d70b91a02da16850e144d4bff90c4bd1e2bafe9105f1431"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211122.0.203258/kopia-20211122.0.203258-linux-x64.tar.gz"
    sha256 "bfcc24015ebc5ad44247f20b3b695e938a2565cf6b5f61d20bdfba2f0b42572f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211122.0.203258/kopia-20211122.0.203258-linux-arm.tar.gz"
    sha256 "86ee1fa675e98ca8848e59f5f8f929e61a2dceb57e4c85824ccecae431ac7eae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211122.0.203258/kopia-20211122.0.203258-linux-arm64.tar.gz"
    sha256 "a9819e7fdf7e4dee063598ed7f02370b44a3bb7e7207f25e2dca7b9df8c98e89"
  end

  def install
    bin.install "kopia"
  end
end
