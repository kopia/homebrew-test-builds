# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210508.0.111531"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210508.0.111531/kopia-20210508.0.111531-macOS-x64.tar.gz"
    sha256 "72fb97839f4afed899404fbb4bc67e9edc1c43f57c23fea6da76c483f9f983c7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210508.0.111531/kopia-20210508.0.111531-macOS-arm64.tar.gz"
    sha256 "b32a19f3d39f26efef5ed8aabdc29fb5aea1d1fbfe731a05801459fde6fd2dc2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210508.0.111531/kopia-20210508.0.111531-linux-x64.tar.gz"
    sha256 "6110f8fbcfd727edd70c9f9701b8c780f2a9e61e2d070e943a6b8d5f6649214b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210508.0.111531/kopia-20210508.0.111531-linux-arm.tar.gz"
    sha256 "6d2b14c76a45d91d5745309b673bdd34853c48b5287101e14cd53896debd2a28"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210508.0.111531/kopia-20210508.0.111531-linux-arm64.tar.gz"
    sha256 "dde0852492d1f21750cafdb845cbf2237eb976fca8d9e5663b140c315aba197f"
  end

  def install
    bin.install "kopia"
  end
end
