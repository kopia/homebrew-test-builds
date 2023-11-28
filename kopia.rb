# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231128.0.145249"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231128.0.145249/kopia-20231128.0.145249-macOS-x64.tar.gz"
    sha256 "d3aef22e4eb29b423448c2cadaf94a9271ab00f6ecf806cc7984bc83b5f0373c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231128.0.145249/kopia-20231128.0.145249-macOS-arm64.tar.gz"
    sha256 "7b22077d3942c0e263173122a676229e22f413c3c07eeed4af4766f79a14a9f6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231128.0.145249/kopia-20231128.0.145249-linux-x64.tar.gz"
    sha256 "a59aadb873c631479f1fe747fb47147a7a5a8c96dd4fff1eae291171ac10b638"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231128.0.145249/kopia-20231128.0.145249-linux-arm.tar.gz"
    sha256 "dfbb28f6d8bce55627864930b908728d369192be4add583a9d05e501366130d9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231128.0.145249/kopia-20231128.0.145249-linux-arm64.tar.gz"
    sha256 "77063cdcd9b8703d08abd1d79ce0e0ba5635e129761f0db6ca8a664981a8b547"
  end

  def install
    bin.install "kopia"
  end
end
