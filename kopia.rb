# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240311.0.222356"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.222356/kopia-20240311.0.222356-macOS-x64.tar.gz"
    sha256 "64c5dfe1ffe85ef3e93278602e036bb08dfcf939e20fbc66596387f10f9d9eb4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.222356/kopia-20240311.0.222356-macOS-arm64.tar.gz"
    sha256 "ea99c3589cfdf35ee900820a1fae3bfba2de68f2f5ff76bc8dc4486ef2051997"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.222356/kopia-20240311.0.222356-linux-x64.tar.gz"
    sha256 "b6591aad0c38b31ebaa1c02ef3db0eaaad0e3c1040a640fa908740a975bc5530"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.222356/kopia-20240311.0.222356-linux-arm.tar.gz"
    sha256 "17912dfe6762e14f1bf9d6a8bff990c0903ce66edeb61231041e0802af6623b0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.222356/kopia-20240311.0.222356-linux-arm64.tar.gz"
    sha256 "7bcab0f2ed9f52f0ee9f7d8db619521fd3243a0c664608dc584b0b48f104fce1"
  end

  def install
    bin.install "kopia"
  end
end
