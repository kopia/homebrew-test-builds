# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241116.0.115250"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.115250/kopia-20241116.0.115250-macOS-x64.tar.gz"
    sha256 "54cbb0e7b9b104f1e443aef42cb7193df85ada4fe6c6a66785e9788dcd80ac89"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.115250/kopia-20241116.0.115250-macOS-arm64.tar.gz"
    sha256 "8cb18f046a64ab2fccba093c4b4e87b7f2630d4e357a3137dd8e2099b24b3bb2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.115250/kopia-20241116.0.115250-linux-x64.tar.gz"
    sha256 "0dca807502f4e75f35b2ede8ad5b72936bfb227c7ff96444ad164486e4ea4db0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.115250/kopia-20241116.0.115250-linux-arm.tar.gz"
    sha256 "21dbb2d55717db60bc72d63a776e06290a38abfed22487a606874d54eb4fd4e9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.115250/kopia-20241116.0.115250-linux-arm64.tar.gz"
    sha256 "53f77d15d59f1323e0ea9611f1f785cafe4761f7aa999851acde93075df68288"
  end

  def install
    bin.install "kopia"
  end
end
