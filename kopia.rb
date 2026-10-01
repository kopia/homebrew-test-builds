# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261001.0.64544"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.64544/kopia-20261001.0.64544-macOS-x64.tar.gz"
    sha256 "252d000b966b176391e0ddd6c265621bd8da64a680d582d978246c28072b6832"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.64544/kopia-20261001.0.64544-macOS-arm64.tar.gz"
    sha256 "aaf139036d99408b85cf34d60fc10b2d33b4fc53cea6a10b50ec9a6a529b63c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.64544/kopia-20261001.0.64544-linux-x64.tar.gz"
    sha256 "eb1f62540926b2baf39686839384e4ec4f8aa884bfb81cf50ddbe6b7490399c9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.64544/kopia-20261001.0.64544-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.64544/kopia-20261001.0.64544-linux-arm64.tar.gz"
    sha256 "c326ca9863b57d70ce07b912b28b9e7c226d58680b62fcb57fd6efc034814192"
  end

  def install
    bin.install "kopia"
  end
end
