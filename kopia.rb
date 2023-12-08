# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231208.0.124817"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231208.0.124817/kopia-20231208.0.124817-macOS-x64.tar.gz"
    sha256 "f523ea85995709e53390ab865d11c89e943b9a63dc09184891b9ca1fe0ad62eb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231208.0.124817/kopia-20231208.0.124817-macOS-arm64.tar.gz"
    sha256 "23a3e959d06d52ab6675d96fa2d4837e7a9cb4a3004a390677e646bb69fb5ce3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231208.0.124817/kopia-20231208.0.124817-linux-x64.tar.gz"
    sha256 "307a7db007ab173672b449ff32efa90b258d466eb563e6ffe2e5cbea0542e1e0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231208.0.124817/kopia-20231208.0.124817-linux-arm.tar.gz"
    sha256 "85d8740ec57cf015804e5814591c6d2601874999c31e2ec38990f027e77e292b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231208.0.124817/kopia-20231208.0.124817-linux-arm64.tar.gz"
    sha256 "b5074cf6a0c9798db2bbe67afa2ee1c374b5ff375b80187bfaf32efd01c78113"
  end

  def install
    bin.install "kopia"
  end
end
