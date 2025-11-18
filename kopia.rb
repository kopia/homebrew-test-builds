# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251118.0.11602"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.11602/kopia-20251118.0.11602-macOS-x64.tar.gz"
    sha256 "036cd6d776c88c62fb6737c3215209f04c17bb84945aced788b3a483ea4545ed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.11602/kopia-20251118.0.11602-macOS-arm64.tar.gz"
    sha256 "47dab67cae7b1d754f0eb728ff0c645c2a9a1268ea36f40410dff9f1e57ee199"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.11602/kopia-20251118.0.11602-linux-x64.tar.gz"
    sha256 "efa64b08a2f77f3ca19ab994f1ebc0f8b0d9a3c2c536d916e0934acd1b40d183"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.11602/kopia-20251118.0.11602-linux-arm.tar.gz"
    sha256 "0291bdefe49cab0ebc25f14d9cefe6f04558c1746beb06d463d446fa3c15e8f5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.11602/kopia-20251118.0.11602-linux-arm64.tar.gz"
    sha256 "364cbc4ee862a0e4351ea85c1096c045152f1197c9a4bfec3f1ad29bcc8b86de"
  end

  def install
    bin.install "kopia"
  end
end
