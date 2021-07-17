# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.75802"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75802/kopia-20210717.0.75802-macOS-x64.tar.gz"
    sha256 "c388361638621704b07d8fc2a65aa230a9795befd6c672edfd29f2951e018080"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75802/kopia-20210717.0.75802-macOS-arm64.tar.gz"
    sha256 "8fe7eda763a229b5491d59dc64ccc1c445d9f5d3abff10286c41d6a24385543d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75802/kopia-20210717.0.75802-linux-x64.tar.gz"
    sha256 "c5e3a2d39a4a69c76354af83d6f28b9e06253f6b94187de55201d1e5a67d95ce"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75802/kopia-20210717.0.75802-linux-arm.tar.gz"
    sha256 "bdcd795b76a9f4c08e78a27176dcba872a14b87b2d2b04b49d0c266ffa925492"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75802/kopia-20210717.0.75802-linux-arm64.tar.gz"
    sha256 "230182af3bd575f69d63e47dbe990efd89ee2680424f8a93146822243787d076"
  end

  def install
    bin.install "kopia"
  end
end
