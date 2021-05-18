# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210517.0.194356"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.194356/kopia-20210517.0.194356-macOS-x64.tar.gz"
    sha256 "2ad3d100e594ea763ac7e0d3043d21a94e20b333ea2ec4cc9fa2be6d6718d17d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.194356/kopia-20210517.0.194356-macOS-arm64.tar.gz"
    sha256 "ad8ab3d898baf1f0c93a8f1043933431cdfa814af0e39634314488bba0a41919"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.194356/kopia-20210517.0.194356-linux-x64.tar.gz"
    sha256 "f206f8d9033111f1679b4a4554dd06b154f6ac08d58d3ed536726a8c375a2377"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.194356/kopia-20210517.0.194356-linux-arm.tar.gz"
    sha256 "00b8fed1157ed1f59dd5c9d6f14747c6a63b75681726b434610d40f6f9804766"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.194356/kopia-20210517.0.194356-linux-arm64.tar.gz"
    sha256 "c339f5263ecbedec4158febb58b8fb68dfa974043da802714d947b239fdd02b5"
  end

  def install
    bin.install "kopia"
  end
end
