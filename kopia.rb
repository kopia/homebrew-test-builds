# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261012.0.153736"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261012.0.153736/kopia-20261012.0.153736-macOS-x64.tar.gz"
    sha256 "b45c4c97f7ee01d0ed43af21204d2487cd8fd9d1ccacc008d8bda65c695c397f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261012.0.153736/kopia-20261012.0.153736-macOS-arm64.tar.gz"
    sha256 "2e7787c09e3134509d69efdae6e8c4ca5b7389746ef78d59c8cf4d6cd6475373"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261012.0.153736/kopia-20261012.0.153736-linux-x64.tar.gz"
    sha256 "ea240c81b51057d88f99a7fe5b256ece5656c9544d3bd8bb0c14355cfa89cbbf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261012.0.153736/kopia-20261012.0.153736-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261012.0.153736/kopia-20261012.0.153736-linux-arm64.tar.gz"
    sha256 "eab823dfd803f788e23e0c74bde77e0f48fcdbcfd3c8cfb469f06c0232bdc7ca"
  end

  def install
    bin.install "kopia"
  end
end
