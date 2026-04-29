# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260429.0.174938"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260429.0.174938/kopia-20260429.0.174938-macOS-x64.tar.gz"
    sha256 "56be9fe25f654e1c6af24897fe147d55a6e8cc3094fe5de8fc5d82bd4799dd96"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260429.0.174938/kopia-20260429.0.174938-macOS-arm64.tar.gz"
    sha256 "bf273f61e051004f35006169ade1ef3632cfcf2e4c9f2d8b41733a1ce5107e23"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260429.0.174938/kopia-20260429.0.174938-linux-x64.tar.gz"
    sha256 "dfa72fe7cf56acddac62d58a3bd7faf35035d823ef6943c72087f69521887c3e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260429.0.174938/kopia-20260429.0.174938-linux-arm.tar.gz"
    sha256 "dcc6d2b71f53344422a1bef773a7504a5ae89e608afddf49639525250ac7b7d6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260429.0.174938/kopia-20260429.0.174938-linux-arm64.tar.gz"
    sha256 "4fff5df46bfe2681f81110428986a83d696f8d17a3fbbf0f6d7cb39c585011ba"
  end

  def install
    bin.install "kopia"
  end
end
