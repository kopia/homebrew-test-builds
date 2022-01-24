# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220123.0.165833"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.165833/kopia-20220123.0.165833-macOS-x64.tar.gz"
    sha256 "61b9288fc2f585674764b903d64dd6ac614adfd6d7fcca46d9e2722d74ea01d0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.165833/kopia-20220123.0.165833-macOS-arm64.tar.gz"
    sha256 "856306e0f0edb3b269be0e030bc86cb8163b1747e6001aa9ff98e5d2d24ef988"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.165833/kopia-20220123.0.165833-linux-x64.tar.gz"
    sha256 "d90d59744c16212181b546fd0be44b6b39e21b2d6b2abbbd4a749f78bc6917a3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.165833/kopia-20220123.0.165833-linux-arm.tar.gz"
    sha256 "6e3adcd4bf6ed866673c94f29b73c35cd94f6516761e979d569a65366b1eed2f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.165833/kopia-20220123.0.165833-linux-arm64.tar.gz"
    sha256 "39cd8ba409eda7e407a975ad01f41dd687c07fdc1578905828ff54999e6775b4"
  end

  def install
    bin.install "kopia"
  end
end
