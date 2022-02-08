# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220207.0.223237"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220207.0.223237/kopia-20220207.0.223237-macOS-x64.tar.gz"
    sha256 "e809d2faddc66b4e1659f985d28d5fc6c404cb119109b47fae2becf639025bd5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220207.0.223237/kopia-20220207.0.223237-macOS-arm64.tar.gz"
    sha256 "ba10cc94dd1395b17e026a3010f075887fd4d151f32ef8b4e0e84514c45d1051"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220207.0.223237/kopia-20220207.0.223237-linux-x64.tar.gz"
    sha256 "4d69056769c5f0d913a6619408071c3ca5dbecdbf6e73d34a5880fbfc61bf4b3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220207.0.223237/kopia-20220207.0.223237-linux-arm.tar.gz"
    sha256 "105b54fbf9d715e4398e33a4a32fb9be3daf3214a1f87287b78f298713df8ef6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220207.0.223237/kopia-20220207.0.223237-linux-arm64.tar.gz"
    sha256 "6e20769757027edab82871300ba869f86eb8a461e15d0b7f961a10fbc2643430"
  end

  def install
    bin.install "kopia"
  end
end
