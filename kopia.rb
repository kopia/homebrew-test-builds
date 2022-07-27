# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220727.0.144851"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220727.0.144851/kopia-20220727.0.144851-macOS-x64.tar.gz"
    sha256 "dcf023c291e37f3f654009fb9793505412f1da500082bc3f01ada27b20ecb7a9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220727.0.144851/kopia-20220727.0.144851-macOS-arm64.tar.gz"
    sha256 "8ef562785fa165511b43e3e63002c649dfd97a44d09251741a3f58875931a23c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220727.0.144851/kopia-20220727.0.144851-linux-x64.tar.gz"
    sha256 "4d60dcc99c76c5682cf179fb55b010f8b07dab5b8c0a7521c21b76905e8e5541"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220727.0.144851/kopia-20220727.0.144851-linux-arm.tar.gz"
    sha256 "fbd1892b86f5a108279f8c41a56ed4708c2d1110b936fb869d2f23a97cfde3ac"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220727.0.144851/kopia-20220727.0.144851-linux-arm64.tar.gz"
    sha256 "279d192da18e1c80cf15b624519e3596ddec6716e808addc22c0e0815573288a"
  end

  def install
    bin.install "kopia"
  end
end
