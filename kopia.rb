# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210901.0.205014"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.205014/kopia-20210901.0.205014-macOS-x64.tar.gz"
    sha256 "5597cb544c7a44751ea463b3a0fbc440bc0ce00ad19ad0fe450210db6627fbea"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.205014/kopia-20210901.0.205014-macOS-arm64.tar.gz"
    sha256 "e1c9d1fd28b09a8d9ae0a9d70510b583bce7dab2f3aa83a45c5438b62855f234"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.205014/kopia-20210901.0.205014-linux-x64.tar.gz"
    sha256 "046253f43d66530b835522ba6620d043922ce03befdb110fe9b88a93bb5ce22d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.205014/kopia-20210901.0.205014-linux-arm.tar.gz"
    sha256 "bc59748b2f3f4831920dd27b6167cddbe031c9bf875c400f1e71d802bb354f5a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.205014/kopia-20210901.0.205014-linux-arm64.tar.gz"
    sha256 "cccb59fb7e4194541f2af64af11394a09a7be462f4fa4f32ba7e7444b5890b53"
  end

  def install
    bin.install "kopia"
  end
end
