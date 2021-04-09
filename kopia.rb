# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210408.0.225235"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210408.0.225235/kopia-20210408.0.225235-macOS-x64.tar.gz"
    sha256 "a4b5706983ca7f7d28ad64a87e7fcbcb81c1e73d5d2f61eecea64c087a2afc13"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210408.0.225235/kopia-20210408.0.225235-macOS-arm64.tar.gz"
    sha256 "c9b19ad0284ed1521bc9d80e9feeebab0821519794bb6992c0de3d48eb108710"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210408.0.225235/kopia-20210408.0.225235-linux-x64.tar.gz"
    sha256 "12bd6cb2abaf685bf4775f803b8a1a24266740b8a7785ed556e46a64a8a7f6f8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210408.0.225235/kopia-20210408.0.225235-linux-arm.tar.gz"
    sha256 "b88e2afa9da1a400ade3caa76052b62997c1b54a8b23df42865f57dc32da8a48"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210408.0.225235/kopia-20210408.0.225235-linux-arm64.tar.gz"
    sha256 "e89c88e191b9c5d7b7f19b2f6e4bf879813dcdb1e957b9ad77c3be5cf3815933"
  end

  def install
    bin.install "kopia"
  end
end
