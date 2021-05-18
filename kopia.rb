# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210517.0.194316"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.194316/kopia-20210517.0.194316-macOS-x64.tar.gz"
    sha256 "98c04a1ca123bd19cc3a04109dd410686e47abe879e22b749f470cfd46574267"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.194316/kopia-20210517.0.194316-macOS-arm64.tar.gz"
    sha256 "b84577390c983a04f45155cef8687055f5ded48db1adb6b1d1f5705c9cfb53f4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.194316/kopia-20210517.0.194316-linux-x64.tar.gz"
    sha256 "0eff3f8cbe0634de873c38c733e6f41b6f7c2365c2b0f89441c5eefb392b53fe"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.194316/kopia-20210517.0.194316-linux-arm.tar.gz"
    sha256 "c07eb55d1bbd9224071c96b9e12c0af122166e961cad1b3f2048126de4046fee"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.194316/kopia-20210517.0.194316-linux-arm64.tar.gz"
    sha256 "5ae2dd56a9435a7fc40752dc275f1b5fa32d1135444a5dbd081f37b7776d5d75"
  end

  def install
    bin.install "kopia"
  end
end
