# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220704.0.114126"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.114126/kopia-20220704.0.114126-macOS-x64.tar.gz"
    sha256 "8fcaaea697055df767352149e3a83fed1a75de150335c475bc0adf50aa126bd4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.114126/kopia-20220704.0.114126-macOS-arm64.tar.gz"
    sha256 "2b12041ff78236917ccea4c90f55ae80bc91f2c3d7c7ec540ed7a1c5f04ec584"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.114126/kopia-20220704.0.114126-linux-x64.tar.gz"
    sha256 "e8168cda4d0e4eb938943d4877f211099bc7e11c92560b989d00d4c2f8a2d458"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.114126/kopia-20220704.0.114126-linux-arm.tar.gz"
    sha256 "65e7878dd0b6a33266e471beff53b6f8398c8fd5ff9022f7aba6606852449663"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.114126/kopia-20220704.0.114126-linux-arm64.tar.gz"
    sha256 "1b8af85cbdfba06ca9e873e7035568623ce911c5d8d9ec25ad7675bc5eefaf69"
  end

  def install
    bin.install "kopia"
  end
end
