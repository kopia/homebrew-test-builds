# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240821.0.5821"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240821.0.5821/kopia-20240821.0.5821-macOS-x64.tar.gz"
    sha256 "d90854a3ecfa556c04a0cd718d54c3133ce67a84164bc46832617e61c42ae1d4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240821.0.5821/kopia-20240821.0.5821-macOS-arm64.tar.gz"
    sha256 "6b2686031c3ad1697a95a03da9a493994d41fb8b9b490e032a604f9a8de25ec0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240821.0.5821/kopia-20240821.0.5821-linux-x64.tar.gz"
    sha256 "b49ed478e9c22f4aab30e4dbf27ee099f1de8d64b2ef47f35014479388ce449b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240821.0.5821/kopia-20240821.0.5821-linux-arm.tar.gz"
    sha256 "5f6b7bb60b2689cd0f4609366f766b39a0b3fba0f6d58140234d2162436ab4bb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240821.0.5821/kopia-20240821.0.5821-linux-arm64.tar.gz"
    sha256 "26b38214485884ada9047e97a1b9a289b5a3793c694d0451ba3df0096bf3f242"
  end

  def install
    bin.install "kopia"
  end
end
