# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220204.0.173840"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220204.0.173840/kopia-20220204.0.173840-macOS-x64.tar.gz"
    sha256 "727bd3aaf7101a4b245ac49eaf77d6faa24c191bde4c769000c4620bc5b69b1d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220204.0.173840/kopia-20220204.0.173840-macOS-arm64.tar.gz"
    sha256 "3fc503af186c86d2215abf91387763768a80dfe2d9e2ccf5bec1762c9375b404"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220204.0.173840/kopia-20220204.0.173840-linux-x64.tar.gz"
    sha256 "08a0add1c6cbede21fd4afc8a156ca123c0e690e4eec744a896b592a87acf377"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220204.0.173840/kopia-20220204.0.173840-linux-arm.tar.gz"
    sha256 "68e053d50248cfe00b860e9f415ed64f0957cc71eab4c9a53ac4372cdd15bf68"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220204.0.173840/kopia-20220204.0.173840-linux-arm64.tar.gz"
    sha256 "2d8cb338ba6c26d147d1ed50f8e663fdb2acf4a7a74f8e64c54954bd301dc957"
  end

  def install
    bin.install "kopia"
  end
end
