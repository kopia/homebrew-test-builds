# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210411.0.165807"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.165807/kopia-20210411.0.165807-macOS-x64.tar.gz"
    sha256 "1d8f4a712ba816459d0a8571ede1e849dfb260e5624c1f941582631600b44028"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.165807/kopia-20210411.0.165807-macOS-arm64.tar.gz"
    sha256 "24ec758bb1f48020476ca0ae3c553d36688d75aae42e4d4b6c20c5b7a0c61755"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.165807/kopia-20210411.0.165807-linux-x64.tar.gz"
    sha256 "8c3ef9e0a03900a9445a28a346936e583acc18d500ae6d39300cd1e7ebb5972d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.165807/kopia-20210411.0.165807-linux-arm.tar.gz"
    sha256 "26bb2f0503da89c7976d9b4472b09ea3c39cea6f21f9de2807bc14a5de84719a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.165807/kopia-20210411.0.165807-linux-arm64.tar.gz"
    sha256 "c80518ed174b5e703aa80626d5a755e9996d0bfbfd971b601dc1415cd55012f1"
  end

  def install
    bin.install "kopia"
  end
end
