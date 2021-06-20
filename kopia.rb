# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210619.0.164845"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210619.0.164845/kopia-20210619.0.164845-macOS-x64.tar.gz"
    sha256 "4aa59fca102f02b56bcb50feba9b30a46c1a0083a9c8db110faeee9d7fc54d83"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210619.0.164845/kopia-20210619.0.164845-macOS-arm64.tar.gz"
    sha256 "66c22ea1aa67a6bea21d8b83d81b5340b6114d75f2344299960da41eaf539ca3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210619.0.164845/kopia-20210619.0.164845-linux-x64.tar.gz"
    sha256 "234057a9d2e027a6f5c7a25f31a7ea59df58203b7fefa4670883a51ea733427e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210619.0.164845/kopia-20210619.0.164845-linux-arm.tar.gz"
    sha256 "bd5c9670d74d2572619e5443f81138940479174b22cf802603aef5baab0085a2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210619.0.164845/kopia-20210619.0.164845-linux-arm64.tar.gz"
    sha256 "5d6b8b7a74694ac2ca6cc1e96418150e33b4a685fe52bc2d7cc13f48ae148276"
  end

  def install
    bin.install "kopia"
  end
end
