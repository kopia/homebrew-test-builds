# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240915.0.93423"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240915.0.93423/kopia-20240915.0.93423-macOS-x64.tar.gz"
    sha256 "8dba7fb8534b43e8856b6973d0e82b90cd0e1609b00139e4720abbf513b422b3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240915.0.93423/kopia-20240915.0.93423-macOS-arm64.tar.gz"
    sha256 "4109fabc042a916943d31e142c05fbd5a60d3d7bcc574e7717956a1421d4b097"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240915.0.93423/kopia-20240915.0.93423-linux-x64.tar.gz"
    sha256 "d5cc0f57fc5a6f5c0a82a26ba056e3bcac4ab9474718110b8aeb54b020923f53"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240915.0.93423/kopia-20240915.0.93423-linux-arm.tar.gz"
    sha256 "1bf7197fd093439f2db08b8e2386f17b9930987bf623dc55528e86a0fc0aea78"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240915.0.93423/kopia-20240915.0.93423-linux-arm64.tar.gz"
    sha256 "a8e6077bb0403b3a287a032df9ffadb7b4c0f7eb27e78a0d5243336ced7cc337"
  end

  def install
    bin.install "kopia"
  end
end
