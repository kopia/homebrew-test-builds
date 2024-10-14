# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241014.0.101711"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241014.0.101711/kopia-20241014.0.101711-macOS-x64.tar.gz"
    sha256 "ed38a83efd632f5b2e475f33d8b80bef665744db2825a11845955ba3634e7455"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241014.0.101711/kopia-20241014.0.101711-macOS-arm64.tar.gz"
    sha256 "dc906ab7d3354690a5f4ebc1fef1f6c454440919c91d28f040a7f0b20203ade7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241014.0.101711/kopia-20241014.0.101711-linux-x64.tar.gz"
    sha256 "63c6c71fef40a37ba9ff75133623fe0c0c15c2ed92d16601aff36dda2502d130"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241014.0.101711/kopia-20241014.0.101711-linux-arm.tar.gz"
    sha256 "7a849a803c27aabb8411a5f1cde720044bca000926bdef0e7f05382ed4fbe8dd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241014.0.101711/kopia-20241014.0.101711-linux-arm64.tar.gz"
    sha256 "4a33ee67060ab6cfc4e2ed6ef868add38277707371c8d03b8b9e6b17198659f7"
  end

  def install
    bin.install "kopia"
  end
end
