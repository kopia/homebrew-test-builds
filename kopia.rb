# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.75953"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75953/kopia-20210717.0.75953-macOS-x64.tar.gz"
    sha256 "4778b8c1d19dc1b8e741ed1073592777cad38d18464c9b82fa07cbadf8818705"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75953/kopia-20210717.0.75953-macOS-arm64.tar.gz"
    sha256 "e42ebaf99e106dc7a7aa71cf0afa5f30d9fed1b649845f13741d2d0ec58d6f5f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75953/kopia-20210717.0.75953-linux-x64.tar.gz"
    sha256 "2e7017eeab27469e8779a04df7722240439b78c038e3029aaeb3acee2e14e9c8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75953/kopia-20210717.0.75953-linux-arm.tar.gz"
    sha256 "e706d1745bd28ac32ac4539d50c8b97309180282163cf6ec88d25deee83b51a5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75953/kopia-20210717.0.75953-linux-arm64.tar.gz"
    sha256 "9375221891ddf9138fda2ca97606a374587b753e960a8f8d9ec127cd68a4bdf8"
  end

  def install
    bin.install "kopia"
  end
end
