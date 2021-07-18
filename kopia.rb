# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210718.0.93123"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.93123/kopia-20210718.0.93123-macOS-x64.tar.gz"
    sha256 "78f76cd46e6115c1c42f3ba18b17dff424e78cf269a94e23831f47511f838115"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.93123/kopia-20210718.0.93123-macOS-arm64.tar.gz"
    sha256 "2d98e85a05399878e8514556ae1b2e7bdd3c1b745604824b6f1ee8c09077bb8c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.93123/kopia-20210718.0.93123-linux-x64.tar.gz"
    sha256 "2b1fbf34bdc30537844c8b9f15db2fd1ad4a21493444b37165d8dbaf204d7d63"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.93123/kopia-20210718.0.93123-linux-arm.tar.gz"
    sha256 "07eddc92fc2eaee408fe7681bda38898e6faa79eadc3744a8b1898e0a851521a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.93123/kopia-20210718.0.93123-linux-arm64.tar.gz"
    sha256 "86128a5438e55939f6aa973a578cba91b743ed7f9e02fa41365cb7a1858fa966"
  end

  def install
    bin.install "kopia"
  end
end
