# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260207.0.14144"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260207.0.14144/kopia-20260207.0.14144-macOS-x64.tar.gz"
    sha256 "da91b6405ee338d60f1a5325f8d8429ff0304e2ff228acb4c8c7bc1f36a5e6ca"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260207.0.14144/kopia-20260207.0.14144-macOS-arm64.tar.gz"
    sha256 "12ceee05fa8355988a14ca71dba596022a2324a0ce69595ed30282edf63db145"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260207.0.14144/kopia-20260207.0.14144-linux-x64.tar.gz"
    sha256 "f218176b7d48ee4bd980023f739b60459382de34cb6ff075ad761acee58dcce9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260207.0.14144/kopia-20260207.0.14144-linux-arm.tar.gz"
    sha256 "75047984bf62e5919329201c6ca0b7c4cdca699f80d8866fca6d6c760da5a193"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260207.0.14144/kopia-20260207.0.14144-linux-arm64.tar.gz"
    sha256 "1ae991724da117118d106fbba719b046b06d03412fcba6cd5ee0e95f93a9fafa"
  end

  def install
    bin.install "kopia"
  end
end
