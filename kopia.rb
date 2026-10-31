# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261031.0.35233"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261031.0.35233/kopia-20261031.0.35233-macOS-x64.tar.gz"
    sha256 "514fbb5b14b154634fe0be0dda519a298bfcf62b2d633d214e45a18133072125"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261031.0.35233/kopia-20261031.0.35233-macOS-arm64.tar.gz"
    sha256 "6e40f88d0434ae6cc824db079586555df374ef981fe80387c5537a0e6d86e5ab"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261031.0.35233/kopia-20261031.0.35233-linux-x64.tar.gz"
    sha256 "337b6be585a8ca138f2beb0fc898caf203654c77ec59eaef3e233349ba4ab89a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261031.0.35233/kopia-20261031.0.35233-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261031.0.35233/kopia-20261031.0.35233-linux-arm64.tar.gz"
    sha256 "dc933ee75bacf2420db9cb9588e09179ef00818bf80c1140c4201a05f8dec2d9"
  end

  def install
    bin.install "kopia"
  end
end
