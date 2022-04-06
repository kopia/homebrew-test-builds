# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220405.0.180450"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220405.0.180450/kopia-20220405.0.180450-macOS-x64.tar.gz"
    sha256 "c8eeedc9c73919f2303c82697db40dfc564d41fe2848156e550a7dba3a93e9e2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220405.0.180450/kopia-20220405.0.180450-macOS-arm64.tar.gz"
    sha256 "0dcd73b294a34370c7468e5e3bdbdf8e301fa78bcee355191d3fc755d114e07e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220405.0.180450/kopia-20220405.0.180450-linux-x64.tar.gz"
    sha256 "bae3a5a5b5e49d099252510096739ad561f8488528454c57d19a218ee3e06a31"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220405.0.180450/kopia-20220405.0.180450-linux-arm.tar.gz"
    sha256 "adc63e8c815a16364a83e71a3c0b67196fd7eb38440fa3dc7324425e6865cc61"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220405.0.180450/kopia-20220405.0.180450-linux-arm64.tar.gz"
    sha256 "c373f2528f127d6ef5572d0d446e76610891c52903a5cf0834d9c103bf408ffa"
  end

  def install
    bin.install "kopia"
  end
end
