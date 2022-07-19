# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220718.0.224736"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220718.0.224736/kopia-20220718.0.224736-macOS-x64.tar.gz"
    sha256 "964cb76636c60efa98213a1b0de350a17fc0d5b794a1814d12eef301bddf8fc3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220718.0.224736/kopia-20220718.0.224736-macOS-arm64.tar.gz"
    sha256 "a40706e69d0c94e06e8ec1fecfb6d86dc7b7d7f7c7b4d32132cbc745aa88fd80"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220718.0.224736/kopia-20220718.0.224736-linux-x64.tar.gz"
    sha256 "5cb40c746071b67c572b937c887cc7b75169d313288083333f34e1db1be0b371"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220718.0.224736/kopia-20220718.0.224736-linux-arm.tar.gz"
    sha256 "992a4c6a5706969b50d02224dae86125ceb323d49bcee96a88832f3ebbe22a01"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220718.0.224736/kopia-20220718.0.224736-linux-arm64.tar.gz"
    sha256 "3b997f5471c2c1c4e2d252e894b4c2cf0a34e45a5506fa8e575af7d98d769c74"
  end

  def install
    bin.install "kopia"
  end
end
