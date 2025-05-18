# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250518.0.11734"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250518.0.11734/kopia-20250518.0.11734-macOS-x64.tar.gz"
    sha256 "56b8ecd22c9464b1e215e04e1646fe9fde89d41b4e00e6aac16fbead651d84e1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250518.0.11734/kopia-20250518.0.11734-macOS-arm64.tar.gz"
    sha256 "9f76db6db295f85ec2b584d3671380f2d2927cbb96c8a4444479350adfb25c9a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250518.0.11734/kopia-20250518.0.11734-linux-x64.tar.gz"
    sha256 "5d47e3200d0cf585b4ee440f084a93e56d68f1a761d23d4e8a2cf164ffceb9e9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250518.0.11734/kopia-20250518.0.11734-linux-arm.tar.gz"
    sha256 "fddead6db15006ca5dfe07938d51f052ee3e816cfe70ec3e4baad7b4b480f0e3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250518.0.11734/kopia-20250518.0.11734-linux-arm64.tar.gz"
    sha256 "f47b84da30a8b8637c17f6282a7f36a7b407b9c5b9b9d8a6a25604fb29684081"
  end

  def install
    bin.install "kopia"
  end
end
