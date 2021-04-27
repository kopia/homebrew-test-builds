# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210427.0.55352"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.55352/kopia-20210427.0.55352-macOS-x64.tar.gz"
    sha256 "cc6bf81de474c8f0823ae43400d296b017b7677d825c3e039c91506b75dd9d8a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.55352/kopia-20210427.0.55352-macOS-arm64.tar.gz"
    sha256 "b27296423527f5ceef495d16313ba97aa5a316eb01834a5165ed31d1c991379c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.55352/kopia-20210427.0.55352-linux-x64.tar.gz"
    sha256 "c4a80b00b49ac04a954471494e74e56bac500c8f075afd1da5f9641b66b3c5b2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.55352/kopia-20210427.0.55352-linux-arm.tar.gz"
    sha256 "eaec0a03e5b9f811506864ce47db8a01d1ee0ea038f62e5076c85bedeb43cff7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.55352/kopia-20210427.0.55352-linux-arm64.tar.gz"
    sha256 "36b11175c3945823597567aeb72431025c09c8b296fbdab361974138ea573f3f"
  end

  def install
    bin.install "kopia"
  end
end
