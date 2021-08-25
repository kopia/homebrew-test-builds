# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210825.0.82452"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210825.0.82452/kopia-20210825.0.82452-macOS-x64.tar.gz"
    sha256 "efaebaa859510f8e43294630de23ef134c8d00064b33e311557beba0b20833f9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210825.0.82452/kopia-20210825.0.82452-macOS-arm64.tar.gz"
    sha256 "94851fa8510bf20f33c6692273e6111b9ff5e0ce57e0699f86a07a94de3ab627"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210825.0.82452/kopia-20210825.0.82452-linux-x64.tar.gz"
    sha256 "0a8e8a353bc16462a3216e90b4b374d655262e49a2565a4f40a0f7d7c9acf848"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210825.0.82452/kopia-20210825.0.82452-linux-arm.tar.gz"
    sha256 "72d2bda5d872eb19975add51d23e9cab9c1e70adfda4f28114826c36f3f97a27"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210825.0.82452/kopia-20210825.0.82452-linux-arm64.tar.gz"
    sha256 "c211c2a81e35ad9451805fa5f7e091b985f43217f929009f41af1712b4fd68f5"
  end

  def install
    bin.install "kopia"
  end
end
