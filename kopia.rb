# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220518.0.12706"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220518.0.12706/kopia-20220518.0.12706-macOS-x64.tar.gz"
    sha256 "940e27f2c3c0d6451f291fb2765f42449be2f81a8cf228899b03575675f9d9c4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220518.0.12706/kopia-20220518.0.12706-macOS-arm64.tar.gz"
    sha256 "fef8770b37406b4e1edd5e973dcf8e322ba4201d3f82801a6ae6f0e709f3adbb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220518.0.12706/kopia-20220518.0.12706-linux-x64.tar.gz"
    sha256 "7f376a08e810c0cdd6e3ce833221d9988567def86efc8bccf982b0a901b5af85"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220518.0.12706/kopia-20220518.0.12706-linux-arm.tar.gz"
    sha256 "876107b2e896644b9349fc941792a4ac958eb6d520e0fa9a4277e568d7bf6812"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220518.0.12706/kopia-20220518.0.12706-linux-arm64.tar.gz"
    sha256 "24c674113cc20188594d4ebbfd057da9fb82cac893decdf99157fdf8d9a80ec2"
  end

  def install
    bin.install "kopia"
  end
end
