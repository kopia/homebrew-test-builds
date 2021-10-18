# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211017.0.230200"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.230200/kopia-20211017.0.230200-macOS-x64.tar.gz"
    sha256 "04621086907b0cb1bbb223feb56c11218f08d69d11f19db7d42c43a8d009ac1c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.230200/kopia-20211017.0.230200-macOS-arm64.tar.gz"
    sha256 "e8ad643a25045d00c1c16c34b851e70a37b65d64863ff3f0eb0e40f3cf3bd3ab"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.230200/kopia-20211017.0.230200-linux-x64.tar.gz"
    sha256 "4b9465015f3fa42d13ea6dfc59939d78b5f310b7983d47526dbb57adae5dd33a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.230200/kopia-20211017.0.230200-linux-arm.tar.gz"
    sha256 "e367c2d92885fcea2a2045dfb79c049a47a9e2bc2278cfb37893ea2bf8584b18"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.230200/kopia-20211017.0.230200-linux-arm64.tar.gz"
    sha256 "4906f9d3580dc0bb6d74ab3a96f8928f45d6a8aeb12b5113651c46a9882e365b"
  end

  def install
    bin.install "kopia"
  end
end
