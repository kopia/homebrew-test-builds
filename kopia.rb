# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230329.0.175144"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230329.0.175144/kopia-20230329.0.175144-macOS-x64.tar.gz"
    sha256 "a3ca46f857559608a6fc79edaad31e9280f538b5030dba30d6573759d5caafa0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230329.0.175144/kopia-20230329.0.175144-macOS-arm64.tar.gz"
    sha256 "c61743b59467edc48f94baed86214fbd1829064c394851bfd439c7ac033fd515"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230329.0.175144/kopia-20230329.0.175144-linux-x64.tar.gz"
    sha256 "13e83eb35dcd4fa6fa3ba2f2d69d0e4441698c0ef52f8850a6e9bc8b2e8f1e5a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230329.0.175144/kopia-20230329.0.175144-linux-arm.tar.gz"
    sha256 "13a3e6b930cd582a3fdc5b5e2a5f820ac9d93570fa5bb1e6da055362b578fbb2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230329.0.175144/kopia-20230329.0.175144-linux-arm64.tar.gz"
    sha256 "52e1ae7039abbd74b4677fcfe7e8c67678a96dcd79987bd6a11b7b73c7aeb411"
  end

  def install
    bin.install "kopia"
  end
end
