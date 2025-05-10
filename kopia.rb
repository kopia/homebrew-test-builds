# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250510.0.60118"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250510.0.60118/kopia-20250510.0.60118-macOS-x64.tar.gz"
    sha256 "68f7a3588b6b533076663e125bbd8a384c5fdf93b69d856faacfe8ef94c596e1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250510.0.60118/kopia-20250510.0.60118-macOS-arm64.tar.gz"
    sha256 "084763f13ad746f456929356c790e1a8136e30e73d8c5309151cb457eec7ee21"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250510.0.60118/kopia-20250510.0.60118-linux-x64.tar.gz"
    sha256 "34aea6cea752964046e13ce754ed0d25ecdc60784391d6f3e3ee88e20da0bbae"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250510.0.60118/kopia-20250510.0.60118-linux-arm.tar.gz"
    sha256 "9e620f07c0eae69d089a5e41e39b7fc40d3ff271f7874d9e9246b7d3ef638a38"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250510.0.60118/kopia-20250510.0.60118-linux-arm64.tar.gz"
    sha256 "37fbd0b7e63e917c8efb4c0f353980eb0162ccdcb9feda31858be290237f008c"
  end

  def install
    bin.install "kopia"
  end
end
