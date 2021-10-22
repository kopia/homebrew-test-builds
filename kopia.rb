# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211021.0.221206"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211021.0.221206/kopia-20211021.0.221206-macOS-x64.tar.gz"
    sha256 "b71b7ce77c6652729b520e175b8db114e43fc0490897e0b2ba4202a8e0334f3b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211021.0.221206/kopia-20211021.0.221206-macOS-arm64.tar.gz"
    sha256 "451e13596bb05c5253760646676b7522d8a34f1cac0cc9ab3786096918cad102"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211021.0.221206/kopia-20211021.0.221206-linux-x64.tar.gz"
    sha256 "4f8d9503500eeeb9b73fcd9947e708a27fbbd23b14d0bb1b04a66faef4a06036"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211021.0.221206/kopia-20211021.0.221206-linux-arm.tar.gz"
    sha256 "5e3742d907759665751a7137a141a1458450afc588ad9a58ef8b99498c861be6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211021.0.221206/kopia-20211021.0.221206-linux-arm64.tar.gz"
    sha256 "9c864ef7c037041e77e43c0764ea3ebf5eb80b3d4910f98f78fdd6d87fcfffe1"
  end

  def install
    bin.install "kopia"
  end
end
