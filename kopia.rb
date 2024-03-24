# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240324.0.163749"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240324.0.163749/kopia-20240324.0.163749-macOS-x64.tar.gz"
    sha256 "32027572d862b87ead825b86605d2e6b940280a2d4ead13ae84a65acfc4ad9d3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240324.0.163749/kopia-20240324.0.163749-macOS-arm64.tar.gz"
    sha256 "6e24bc5231e91586f1d87c658467392500a03fd4773c27fae77df6b7510ce691"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240324.0.163749/kopia-20240324.0.163749-linux-x64.tar.gz"
    sha256 "cd807e987a80a22159d2669de9ae32ad2d4779bc8e28ba100d2707343dfedb9a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240324.0.163749/kopia-20240324.0.163749-linux-arm.tar.gz"
    sha256 "5b4f0cc276503a55bfe8615bb2b9fe357a93881c3c6ed1cbb1a09089d6fedd2c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240324.0.163749/kopia-20240324.0.163749-linux-arm64.tar.gz"
    sha256 "9acc0b07800fb0e01e5ee1a5bc12ac9b72c203b3376b66b1ed0910c5742670a0"
  end

  def install
    bin.install "kopia"
  end
end
