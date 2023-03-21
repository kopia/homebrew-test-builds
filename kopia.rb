# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230320.0.205210"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230320.0.205210/kopia-20230320.0.205210-macOS-x64.tar.gz"
    sha256 "16bd754f226cb6e44d40982399b380b743a9d8d044092e4b3ad3169667c61d9b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230320.0.205210/kopia-20230320.0.205210-macOS-arm64.tar.gz"
    sha256 "9fd442a60ce1e4b162229b0d45293fef6f08c7aff15b7122c958b24047e5d953"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230320.0.205210/kopia-20230320.0.205210-linux-x64.tar.gz"
    sha256 "d88904b2da004e84d1e809d5957fa9f00c3037aba2c7a5065b77c5cbc365ec01"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230320.0.205210/kopia-20230320.0.205210-linux-arm.tar.gz"
    sha256 "107f02cd5c3f016b1321338b43c902b267463f5527915cfa0b0d9433b2373e9d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230320.0.205210/kopia-20230320.0.205210-linux-arm64.tar.gz"
    sha256 "7502c6a9df6b1000ab28becfd231a413714ddfd7649d5bdd2ccfaa58324d8a6d"
  end

  def install
    bin.install "kopia"
  end
end
