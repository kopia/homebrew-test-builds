# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210405.0.214409"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.214409/kopia-20210405.0.214409-macOS-x64.tar.gz"
    sha256 "873295930aa84d7ba63c145bf5abda456b42bbea1767ed0e2ae881c7bbe3e1e9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.214409/kopia-20210405.0.214409-macOS-arm64.tar.gz"
    sha256 "8dd884785ac2df24d820ee8a6be56540f141d2c5b8e0fb2dbf4310cde99a4f8a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.214409/kopia-20210405.0.214409-linux-x64.tar.gz"
    sha256 "01cd03f6b9f634f3ef9f1a454500d734b196e07b7e50e7186260d609536b4606"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.214409/kopia-20210405.0.214409-linux-arm.tar.gz"
    sha256 "b3978e415b94a42d1233754320d17832b6c0e9dcd48510003aeee54633be39d2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.214409/kopia-20210405.0.214409-linux-arm64.tar.gz"
    sha256 "cca29f5d9cacbff43d3c988d9b2e6656e202f46ba0c586be6fcc68f4ee7f2f52"
  end

  def install
    bin.install "kopia"
  end
end
