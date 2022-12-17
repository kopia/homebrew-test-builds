# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221217.0.161912"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221217.0.161912/kopia-20221217.0.161912-macOS-x64.tar.gz"
    sha256 "b3fd882322ea69f99452a8fe3e10dfe1f3fe0a0f87288c4915c3e1602611b282"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221217.0.161912/kopia-20221217.0.161912-macOS-arm64.tar.gz"
    sha256 "1cf351e606dc99815a2e067d0dd65b7b6c4ef427bccfbf68d753fb3abad6131a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221217.0.161912/kopia-20221217.0.161912-linux-x64.tar.gz"
    sha256 "f7ba0a10ec7ed5ac39328b352bd48ca20dc4014ebfa7f9cd6b06a7e0f9ec28ad"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221217.0.161912/kopia-20221217.0.161912-linux-arm.tar.gz"
    sha256 "1dd949f65a8afac5ba55886f264a6cba9808eae2cbe1a0f396d08af763098979"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221217.0.161912/kopia-20221217.0.161912-linux-arm64.tar.gz"
    sha256 "2989840c4f62d5b1e06f6eb4e21fad222d927d5fc7fb912367f651f468be19b0"
  end

  def install
    bin.install "kopia"
  end
end
