# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241207.0.113027"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241207.0.113027/kopia-20241207.0.113027-macOS-x64.tar.gz"
    sha256 "fa58714386752c19c529f24e9277ea3b2ff69bfd33110c30b7c13cb182e4aa95"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241207.0.113027/kopia-20241207.0.113027-macOS-arm64.tar.gz"
    sha256 "89b988ad0cfe479c91c4059604e4eea982193354d42a11ac0eb56443c3add642"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241207.0.113027/kopia-20241207.0.113027-linux-x64.tar.gz"
    sha256 "f2095f02892d3580a532de736e16989c619ac2d9859c0b889fe63d1270beeb83"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241207.0.113027/kopia-20241207.0.113027-linux-arm.tar.gz"
    sha256 "9359450228264a6ddedb82c8cd585a51ca47ae249220a2c1a94cf3e22782cae1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241207.0.113027/kopia-20241207.0.113027-linux-arm64.tar.gz"
    sha256 "c0725a8338941c7ebb97a31296abc2d209c71716d368ad2b878f7a3979b1d961"
  end

  def install
    bin.install "kopia"
  end
end
