# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211006.0.202745"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.202745/kopia-20211006.0.202745-macOS-x64.tar.gz"
    sha256 "9923f8dfee1cc89caec288a54c6eb4df1eb89c0de7385d40c6838cdbfe2804dc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.202745/kopia-20211006.0.202745-macOS-arm64.tar.gz"
    sha256 "f6114c39d0c359d59f97ba84ece1ef2b98c9bf08b252c908f58e383c658b036b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.202745/kopia-20211006.0.202745-linux-x64.tar.gz"
    sha256 "0ea27389dcc637b0957589f012763fc84f51f06a278dad3b092127714bf4968c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.202745/kopia-20211006.0.202745-linux-arm.tar.gz"
    sha256 "66889ee646f7036f89062f52d8a680c8845de55094a15e3d097f6328ebe4a736"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.202745/kopia-20211006.0.202745-linux-arm64.tar.gz"
    sha256 "9faeec63efbb6b9cc76e4c8ef52240e039967d7879f4fd495ca5e5091b3292ad"
  end

  def install
    bin.install "kopia"
  end
end
