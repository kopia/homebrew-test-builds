# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250321.0.231559"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250321.0.231559/kopia-20250321.0.231559-macOS-x64.tar.gz"
    sha256 "d61c32f9715e7ae4ada62692f81eec8f8662c8e5dd8187c9ad23ceafa8c1a07f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250321.0.231559/kopia-20250321.0.231559-macOS-arm64.tar.gz"
    sha256 "388d07fb56e946203303e9f3daa3443205a776b3655deaf667ec1ddc5b9954a7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250321.0.231559/kopia-20250321.0.231559-linux-x64.tar.gz"
    sha256 "d14922331b0bc3b027a3e014deb044252b40131c1a25e22afa14f5e04db5c465"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250321.0.231559/kopia-20250321.0.231559-linux-arm.tar.gz"
    sha256 "063e21d5dc9150d6a38ebcc0c80c7f182ad39d7473298ea24f8a950aa2050507"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250321.0.231559/kopia-20250321.0.231559-linux-arm64.tar.gz"
    sha256 "b5cdd00fc3a89784d8970f1ab397600465d5b02d14f348e06340e1e56a60b3f2"
  end

  def install
    bin.install "kopia"
  end
end
