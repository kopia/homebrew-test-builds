# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220525.0.214832"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.214832/kopia-20220525.0.214832-macOS-x64.tar.gz"
    sha256 "0eb150313d2f2ca062ce096e586074643ec64314b80b761c8a7543bd638d310f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.214832/kopia-20220525.0.214832-macOS-arm64.tar.gz"
    sha256 "6f5f563675574eeb5c5e5fc8d5fa47662024b4e1d59068b367fe1d33db06fc0b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.214832/kopia-20220525.0.214832-linux-x64.tar.gz"
    sha256 "3395b83f60c4768e74ba4931938e06418517bfa8b8ce6af4dce8467e3efdf631"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.214832/kopia-20220525.0.214832-linux-arm.tar.gz"
    sha256 "09b05980491534e01f6c723e88888713d7cbe1db2a61f8a8033a35c7f2d9c979"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.214832/kopia-20220525.0.214832-linux-arm64.tar.gz"
    sha256 "fd2ad370ef5928120559029a6fa25f15fce0acb1f12c62025c1d27c0d7c5ef03"
  end

  def install
    bin.install "kopia"
  end
end
