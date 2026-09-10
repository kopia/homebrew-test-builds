# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260910.0.144458"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.144458/kopia-20260910.0.144458-macOS-x64.tar.gz"
    sha256 "f83e204d7cc4a490db8f15d22baf008f8a99f1fd6cad0b860245e4e85f0bbd14"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.144458/kopia-20260910.0.144458-macOS-arm64.tar.gz"
    sha256 "b829c1ab1dfedb918237254aa35ac71ffdac4d69f423cab3b616284e799ec440"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.144458/kopia-20260910.0.144458-linux-x64.tar.gz"
    sha256 "f4981f4b535eb471e66efbae0788e3b26b2a08eb3de1ef0c4ebe4aa99eb7b57f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.144458/kopia-20260910.0.144458-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.144458/kopia-20260910.0.144458-linux-arm64.tar.gz"
    sha256 "004dc4d676371f55a88728242e436ffc0a26062ff6f40360d0eb116d5e0775fc"
  end

  def install
    bin.install "kopia"
  end
end
