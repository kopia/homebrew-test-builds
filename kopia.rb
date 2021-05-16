# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210516.0.161906"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.161906/kopia-20210516.0.161906-macOS-x64.tar.gz"
    sha256 "d61128bba1529be4284c9c1c0be9a3b33bc8805c9338c0abf0ae1eb75f3c6823"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.161906/kopia-20210516.0.161906-macOS-arm64.tar.gz"
    sha256 "074fc71f9cef343ef9c3100e454c9a8bfc7fc73a519f19158e67961cfda15ed4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.161906/kopia-20210516.0.161906-linux-x64.tar.gz"
    sha256 "95dcff6021c842b82798b050fd216e5d6c46f3ae0b6cda0ad83e8e88b052af88"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.161906/kopia-20210516.0.161906-linux-arm.tar.gz"
    sha256 "73d828d126d2758c65be2d3edc29465f2d0fd9be81fd66188c12f219f80f9c51"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.161906/kopia-20210516.0.161906-linux-arm64.tar.gz"
    sha256 "f03a41e50a1330c4f2be3271fec38251f071889c961a431cf8b11aefcabf75c6"
  end

  def install
    bin.install "kopia"
  end
end
