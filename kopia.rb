# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210428.0.64206"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210428.0.64206/kopia-20210428.0.64206-macOS-x64.tar.gz"
    sha256 "807252928c8bc0ca6d4aa446585428411365eae9612b31924921e033616df1a3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210428.0.64206/kopia-20210428.0.64206-macOS-arm64.tar.gz"
    sha256 "7ac309c6c2df0cfeaefbf3cd679813381afbd75771a27d8a649542ae97a22b2a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210428.0.64206/kopia-20210428.0.64206-linux-x64.tar.gz"
    sha256 "c189c98d574f623e69109cae85bc9c220d84704588a223f04c90ac41076c7c44"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210428.0.64206/kopia-20210428.0.64206-linux-arm.tar.gz"
    sha256 "f66de4ecd71178aa3516f4082e9d45efc6799da496afdba1e7aee93c966a84ed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210428.0.64206/kopia-20210428.0.64206-linux-arm64.tar.gz"
    sha256 "578d38f807a55eae2a0d7bf86c734841dbd7e029ad2a47bb4b1cdb352e12f052"
  end

  def install
    bin.install "kopia"
  end
end
