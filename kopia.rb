# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240711.0.171844"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.171844/kopia-20240711.0.171844-macOS-x64.tar.gz"
    sha256 "c9636fe2dbef390f8f4bf1606209734599cad0475838634f10c0b6ee82c036ed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.171844/kopia-20240711.0.171844-macOS-arm64.tar.gz"
    sha256 "6f684e0f8d3e6e0e257400207f8e3b100f3bac3e088eda2941636dd48cebf2dc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.171844/kopia-20240711.0.171844-linux-x64.tar.gz"
    sha256 "d4645e655523fa05be20298a5d644512d7f76be62e4a92d45b1d684641c59229"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.171844/kopia-20240711.0.171844-linux-arm.tar.gz"
    sha256 "dd21465ea89624913206bc6d7d36c0b72a9b050aa1b8dc2b5c3abbcf38f3332d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.171844/kopia-20240711.0.171844-linux-arm64.tar.gz"
    sha256 "0274595592baf1736d1ce5acccad1c12da12317d9fae4d50f96f57c0d68fb121"
  end

  def install
    bin.install "kopia"
  end
end
