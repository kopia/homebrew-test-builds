# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241001.0.54347"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241001.0.54347/kopia-20241001.0.54347-macOS-x64.tar.gz"
    sha256 "07340959726143a2bcb974b4b896e40023c7423d5fe203c2580867a08a7b08bf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241001.0.54347/kopia-20241001.0.54347-macOS-arm64.tar.gz"
    sha256 "d3a1d0174d28440e1701945d737149532e8504271a6372eae9e6e1bbcb2bfe29"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241001.0.54347/kopia-20241001.0.54347-linux-x64.tar.gz"
    sha256 "bc1c86e4d5bc84e76bfe833c98acd7f72ab4ebadd62593e5790ed46fe226b370"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241001.0.54347/kopia-20241001.0.54347-linux-arm.tar.gz"
    sha256 "88693463c274a64d0b17e463e4d0f00145f750068dd065a5114812fe6b8d041e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241001.0.54347/kopia-20241001.0.54347-linux-arm64.tar.gz"
    sha256 "e46f004fc079f1e53d9ab9a02b14d4b3703f9f1e22f6b849422489c54dd02eb0"
  end

  def install
    bin.install "kopia"
  end
end
