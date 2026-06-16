# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260616.0.170900"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260616.0.170900/kopia-20260616.0.170900-macOS-x64.tar.gz"
    sha256 "a5c211d3d01a94a38f7f909f41b70400d52f3dabae597a379538536dcaa11866"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260616.0.170900/kopia-20260616.0.170900-macOS-arm64.tar.gz"
    sha256 "4d428654876901692e669c4b7969c4c6f0eb7c30389a4ce5ac984c0743ac0a3a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260616.0.170900/kopia-20260616.0.170900-linux-x64.tar.gz"
    sha256 "3f95dc9616287cba7c0315f9784c00869989b17058ee2b1c144909d573d7c72a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260616.0.170900/kopia-20260616.0.170900-linux-arm.tar.gz"
    sha256 "07bc5b99041ec5b00573e57e967635d41b98df111524b57dcf616b7fecbc5f07"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260616.0.170900/kopia-20260616.0.170900-linux-arm64.tar.gz"
    sha256 "11ca00e98a553a8464db17bbdb855b39fb38a1ef260fa1d2a625bfcf69a348e1"
  end

  def install
    bin.install "kopia"
  end
end
