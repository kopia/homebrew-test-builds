# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251209.0.12832"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251209.0.12832/kopia-20251209.0.12832-macOS-x64.tar.gz"
    sha256 "8e16ebd35a4a783883074d85b3e6048a48fb2fff964834df7aebf704ca0fff4c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251209.0.12832/kopia-20251209.0.12832-macOS-arm64.tar.gz"
    sha256 "137bdf743a3204820dd1ad3d83e8ea89a4130f92033d9ce1df4a54c7af5ea366"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251209.0.12832/kopia-20251209.0.12832-linux-x64.tar.gz"
    sha256 "397c9c8539649f5244217814d5dabfcb561fa46a956357bd34d496074638562d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251209.0.12832/kopia-20251209.0.12832-linux-arm.tar.gz"
    sha256 "c3efad22cf5d16de1b17319502a98bfcc18916056b75e1024ce8adba6a473e25"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251209.0.12832/kopia-20251209.0.12832-linux-arm64.tar.gz"
    sha256 "3b9145d9721b194c2d0da5b74cc22c9514e34a69df2bcb57178cc19128e2572f"
  end

  def install
    bin.install "kopia"
  end
end
