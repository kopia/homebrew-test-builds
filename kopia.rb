# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261015.0.160540"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261015.0.160540/kopia-20261015.0.160540-macOS-x64.tar.gz"
    sha256 "7c52d996be9187d5778c18312d5a3b74b9f088cc3e76a745b85d9cd06833c464"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261015.0.160540/kopia-20261015.0.160540-macOS-arm64.tar.gz"
    sha256 "7cc832b5d53fa7716c4a5e888e093fc619b917cb680138aff1658a7b3303dd20"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261015.0.160540/kopia-20261015.0.160540-linux-x64.tar.gz"
    sha256 "8b988a2f3b6014d97ea8579f1e19dacf33c4345b1d69251a2d59d73283d44a9b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261015.0.160540/kopia-20261015.0.160540-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261015.0.160540/kopia-20261015.0.160540-linux-arm64.tar.gz"
    sha256 "d94b84037b4fa675177982864191234a0f13054040a3b92f7cd7cd28427429c8"
  end

  def install
    bin.install "kopia"
  end
end
