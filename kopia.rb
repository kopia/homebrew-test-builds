# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211216.0.194553"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211216.0.194553/kopia-20211216.0.194553-macOS-x64.tar.gz"
    sha256 "2452abc130eb9fa0aebead8fe81f3ae20459d923903b4c78f54f1fddfb29ab51"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211216.0.194553/kopia-20211216.0.194553-macOS-arm64.tar.gz"
    sha256 "557f31348aaa26494883cdff28b15b18404c2811f56d2e289b5ea2a9106e2958"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211216.0.194553/kopia-20211216.0.194553-linux-x64.tar.gz"
    sha256 "f7cb293375ee7a70802680456ea4ee52aab1b10483b264c4ec71e8c91cc80566"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211216.0.194553/kopia-20211216.0.194553-linux-arm.tar.gz"
    sha256 "ae6535f43fde76befce2a4a0dcc4372a13d1f115efba7d4800f52a997e4d9f53"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211216.0.194553/kopia-20211216.0.194553-linux-arm64.tar.gz"
    sha256 "16e25fa309857c122c6fc7e441ecf0456536fa5a3d09eb3ab78f94df52e72343"
  end

  def install
    bin.install "kopia"
  end
end
