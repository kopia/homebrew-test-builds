# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250427.0.61136"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.61136/kopia-20250427.0.61136-macOS-x64.tar.gz"
    sha256 "93b0d19a8698d46e23eb52b4212d86d190d8c9c1c44367d5072ed245077f473c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.61136/kopia-20250427.0.61136-macOS-arm64.tar.gz"
    sha256 "a46d905e8f6170c85a1e3fcd589886b7d05be7a2af8269f23828cc714164c7e7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.61136/kopia-20250427.0.61136-linux-x64.tar.gz"
    sha256 "50fbe031db5362165de4efab82bb1792bc4f5a1884761d6c49cd47325627c69e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.61136/kopia-20250427.0.61136-linux-arm.tar.gz"
    sha256 "0b35451bc0af9d3f26c73a6d628b127a97e9d13f8eefa4d4e1a48eda1137c827"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.61136/kopia-20250427.0.61136-linux-arm64.tar.gz"
    sha256 "b50bc8a9f83836bb24d2ca5920a3845b16dfd4cd458b1d1d33f1d4c4621dbe55"
  end

  def install
    bin.install "kopia"
  end
end
