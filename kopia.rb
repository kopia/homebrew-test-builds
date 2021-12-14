# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211213.0.174846"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.174846/kopia-20211213.0.174846-macOS-x64.tar.gz"
    sha256 "623fb7bab448586a37cce63f2327b3d7b8d3185765af4fe7201b70f336bc4e70"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.174846/kopia-20211213.0.174846-macOS-arm64.tar.gz"
    sha256 "07dfd68dfe36f39a1f146fd991ad5ba86930a2087ff11e45415abbea0dba5cef"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.174846/kopia-20211213.0.174846-linux-x64.tar.gz"
    sha256 "b1acf0a2d160d28ce6b8e8f3216a4823d45e5f8bd9ee45e4eb7435a7ed8f9879"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.174846/kopia-20211213.0.174846-linux-arm.tar.gz"
    sha256 "71383f76ba824daa65d149b7e39826f1de70fca82d7af85b2b1bebebe297cb92"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.174846/kopia-20211213.0.174846-linux-arm64.tar.gz"
    sha256 "f2f5db8a735af761a27378f3c11c4ac1474ce0f2e3bbdf59a8a21dd2a47c20b8"
  end

  def install
    bin.install "kopia"
  end
end
