# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211013.0.212155"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.212155/kopia-20211013.0.212155-macOS-x64.tar.gz"
    sha256 "256d66f123555d03f35f4b3f4fa5257db065cf0ca60f29412f1ff9ca258dc076"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.212155/kopia-20211013.0.212155-macOS-arm64.tar.gz"
    sha256 "dfc8dda78563ccfc754714362a2c8a3e7467517fc367217f7151a53ab39905b0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.212155/kopia-20211013.0.212155-linux-x64.tar.gz"
    sha256 "6e1b1f068e9d8bc717e8327950c1163d2072dbd8cb19e5f5cf0c0fb89861bb4b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.212155/kopia-20211013.0.212155-linux-arm.tar.gz"
    sha256 "9f839c9373fd4b1f555c9d7d3a92aa2221ea39288d86abab35ca4e5e1ba9e0f6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.212155/kopia-20211013.0.212155-linux-arm64.tar.gz"
    sha256 "397dfe8dd4541336bd8b3f76a71ba6fef177ba6a1eb24652245c73b7325ab7c8"
  end

  def install
    bin.install "kopia"
  end
end
