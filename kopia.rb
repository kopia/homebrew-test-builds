# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210909.0.210533"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210909.0.210533/kopia-20210909.0.210533-macOS-x64.tar.gz"
    sha256 "3d51694afa2f946d27c5053f39b299f1695914e08d57ca6f632eb11600d24d72"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210909.0.210533/kopia-20210909.0.210533-macOS-arm64.tar.gz"
    sha256 "69c9a2f7838a036e01ed7c2201899618af66025187ddf9362d01c0b6716817b9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210909.0.210533/kopia-20210909.0.210533-linux-x64.tar.gz"
    sha256 "e1155981e055e95ccb33ab910566980f324868afb634251eac02a3150e9e8a51"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210909.0.210533/kopia-20210909.0.210533-linux-arm.tar.gz"
    sha256 "bc3fd1918053fb6ef03c839aa6af0943f1b820e7857e9e25b89c1677aedf65c6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210909.0.210533/kopia-20210909.0.210533-linux-arm64.tar.gz"
    sha256 "868312e333a62a7aa34875b9f5f92afe72445061420821615dc10250be5371da"
  end

  def install
    bin.install "kopia"
  end
end
