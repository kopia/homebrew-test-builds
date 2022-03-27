# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220326.0.195055"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.195055/kopia-20220326.0.195055-macOS-x64.tar.gz"
    sha256 "753e857b685afb7a200fcc1bfee3556a48f2e0f94ee0bdba7d70809b110eed24"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.195055/kopia-20220326.0.195055-macOS-arm64.tar.gz"
    sha256 "02510790ff8c89dc1bc081dbc3a454b46f4dbb85f75f5ed5ae849d328c3fb83b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.195055/kopia-20220326.0.195055-linux-x64.tar.gz"
    sha256 "94d9ba6680080cccf1e82b3c5b632307331cd555bdfb989ebc9eef3670dcbfaa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.195055/kopia-20220326.0.195055-linux-arm.tar.gz"
    sha256 "eecbed40afc24ca38805f742545b1256f5fe48562735334c65cde32427be28bc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.195055/kopia-20220326.0.195055-linux-arm64.tar.gz"
    sha256 "0a0ea53ddf690bf61a29784663f2ca1c10f39bd5ae17bf45097fe30b780ad42e"
  end

  def install
    bin.install "kopia"
  end
end
