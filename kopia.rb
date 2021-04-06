# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210405.0.210801"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210801/kopia-20210405.0.210801-macOS-x64.tar.gz"
    sha256 "a74e6dd031e8075f309050ddc75fbae6e0790faebdefea5abc0c8856c668e618"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210801/kopia-20210405.0.210801-macOS-arm64.tar.gz"
    sha256 "67cada9483743edc845fd0241f773183717716a1b3dbd56ce334503b9997cf3c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210801/kopia-20210405.0.210801-linux-x64.tar.gz"
    sha256 "743b29fec3f7407108c08c0c8e91f3d53db03ec8883327e3cf728a2b8d2639cf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210801/kopia-20210405.0.210801-linux-arm.tar.gz"
    sha256 "b34b2afc1197d281ee5b378bfef8571e457f514f828d3b35e3607d517b4e804b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210801/kopia-20210405.0.210801-linux-arm64.tar.gz"
    sha256 "2494f9f211336fbb50b2ccc47848ead27358fe0075f85a51ce4da05df909a709"
  end

  def install
    bin.install "kopia"
  end
end
