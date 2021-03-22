# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210321.0.221555"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.221555/kopia-20210321.0.221555-macOS-x64.tar.gz"
    sha256 "ba05d7aab78cda38164adc0a9f4749f77d76176077eae58088352185fdda3d82"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.221555/kopia-20210321.0.221555-macOS-arm64.tar.gz"
    sha256 "02e0e657a65c8f220c55ac04882d03a7aff81104a3c5fad6c4860d683c4e61ec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.221555/kopia-20210321.0.221555-linux-x64.tar.gz"
    sha256 "307df0cf1f972547d5828b32d2609722ef8e87e9f6f0dfdedd3fecb482643477"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.221555/kopia-20210321.0.221555-linux-arm.tar.gz"
    sha256 "7606fb96eb10c7216636aab815a416e498e3f6c84817a360e5a4b91a34e91fe6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.221555/kopia-20210321.0.221555-linux-arm64.tar.gz"
    sha256 "5ffa73317ce609a6797b5e87edb3a29cc61d98b80d8b32ebba4d02fb52ceca59"
  end

  def install
    bin.install "kopia"
  end
end
