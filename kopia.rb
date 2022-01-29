# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220128.0.231952"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220128.0.231952/kopia-20220128.0.231952-macOS-x64.tar.gz"
    sha256 "07830d076042c7713f606b1e757612c4b0ea98a8a6ff7968a09d695b791a247a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220128.0.231952/kopia-20220128.0.231952-macOS-arm64.tar.gz"
    sha256 "bbfbacbaf80b24aeb8679e4afb2f4dde65992051cde643f716ca2722dbf0c371"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220128.0.231952/kopia-20220128.0.231952-linux-x64.tar.gz"
    sha256 "7d3d70ff58bad8d58473077c659ff92e7151ae371e3936f502448c6c0ae9350c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220128.0.231952/kopia-20220128.0.231952-linux-arm.tar.gz"
    sha256 "2b8b6db35704f15c25f922b2e63c1f81e216248702aa1d8e43f4ed429374dec6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220128.0.231952/kopia-20220128.0.231952-linux-arm64.tar.gz"
    sha256 "a0dc8ccb60af61b8721ac2ca10cc3983d7ed2b059731031c3e0aca090aa86950"
  end

  def install
    bin.install "kopia"
  end
end
