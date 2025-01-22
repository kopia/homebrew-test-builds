# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250122.0.101508"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.101508/kopia-20250122.0.101508-macOS-x64.tar.gz"
    sha256 "9084f5f181df6e401c0b5abecf6181d381f8e86156cfa4902b329135a07d388e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.101508/kopia-20250122.0.101508-macOS-arm64.tar.gz"
    sha256 "0047c31820f384f64aa53946a4ab3ac46aaca33aea0f2e19d5bc3cdfcac51540"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.101508/kopia-20250122.0.101508-linux-x64.tar.gz"
    sha256 "8042b7ebcd996b5835b0ebb5bb63982d3fe146165f687d52f8a55598593252b1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.101508/kopia-20250122.0.101508-linux-arm.tar.gz"
    sha256 "342fc4a99b3243d617356e68cf38922b97ef49a2f61bde350c968ee54a2ef4f3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.101508/kopia-20250122.0.101508-linux-arm64.tar.gz"
    sha256 "87a47079f1f1c831b9d56b1dc73cf0dbd3e147cda33be97e936a180f7b4718f9"
  end

  def install
    bin.install "kopia"
  end
end
