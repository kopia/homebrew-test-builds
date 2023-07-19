# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230718.0.182324"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230718.0.182324/kopia-20230718.0.182324-macOS-x64.tar.gz"
    sha256 "7cb1fd3e7a4229d62d3800e602a89c25dd7e2d5e6b99594816ed0b03331759a4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230718.0.182324/kopia-20230718.0.182324-macOS-arm64.tar.gz"
    sha256 "760b4ec78720f2745959d262613e0161e61421f25236e709d57b486fe922a6f3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230718.0.182324/kopia-20230718.0.182324-linux-x64.tar.gz"
    sha256 "2548fc18452f60cfd9e74b7321f98b8683b5e21755d5e6817073a9ffb2db9e58"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230718.0.182324/kopia-20230718.0.182324-linux-arm.tar.gz"
    sha256 "0239e98ad98f3581865ea59a0b036483ac92c47fb901bfd4fb9c63e60dbe8731"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230718.0.182324/kopia-20230718.0.182324-linux-arm64.tar.gz"
    sha256 "61ab4f8d1dc3f212d574f0df87c2fb6fed22cf993a07cfabb4838551b56ba976"
  end

  def install
    bin.install "kopia"
  end
end
