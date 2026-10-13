# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261013.0.13638"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261013.0.13638/kopia-20261013.0.13638-macOS-x64.tar.gz"
    sha256 "ac7c726d7d41d618dae8db63e05d48f3a83e16de742db9820edb888816528634"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261013.0.13638/kopia-20261013.0.13638-macOS-arm64.tar.gz"
    sha256 "8ebf2cba06ac0b9afa07f2afdaa7dac258eae1b09505ec3943f77706f1cc0dd6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261013.0.13638/kopia-20261013.0.13638-linux-x64.tar.gz"
    sha256 "ada12ce670895639e3764fa3f74dc4d04ac8189678ec7b2c0a18490036dee374"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261013.0.13638/kopia-20261013.0.13638-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261013.0.13638/kopia-20261013.0.13638-linux-arm64.tar.gz"
    sha256 "e6198306e6239831d7b0670f5695c084007f3d2aae735690c7f3d16325b3fc9a"
  end

  def install
    bin.install "kopia"
  end
end
