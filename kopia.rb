# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240423.0.172401"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240423.0.172401/kopia-20240423.0.172401-macOS-x64.tar.gz"
    sha256 "145668191e08238fec4c058bb3cb00f8e1838b211d2daff71db80481feb64b2e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240423.0.172401/kopia-20240423.0.172401-macOS-arm64.tar.gz"
    sha256 "794348d5552ad3df7ffa9232e542f1e74da3858b5cd3eefba8127fc2c1733767"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240423.0.172401/kopia-20240423.0.172401-linux-x64.tar.gz"
    sha256 "9296c844a3e078ba13232a1fbdd8f312c56f51cffec21b729721bc2937e694de"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240423.0.172401/kopia-20240423.0.172401-linux-arm.tar.gz"
    sha256 "9d1e108536027d36ea5596c25f96bbbb7db2e4eb98b5c2f4b665e0495d358e23"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240423.0.172401/kopia-20240423.0.172401-linux-arm64.tar.gz"
    sha256 "f10744a16bfa095d5a0c0d1c13216a9b3d5b5ed097e1ad690cef1e7dbad24584"
  end

  def install
    bin.install "kopia"
  end
end
