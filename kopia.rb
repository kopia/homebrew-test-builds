# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210507.0.95627"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210507.0.95627/kopia-20210507.0.95627-macOS-x64.tar.gz"
    sha256 "610a0b76fb6232da474b7cc28d82be0393a73d6ebe49e5effb619568ed975851"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210507.0.95627/kopia-20210507.0.95627-macOS-arm64.tar.gz"
    sha256 "1ba98b747240177c10c3e941efeb850f2f168eef28f99bad2165cb25e5060512"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210507.0.95627/kopia-20210507.0.95627-linux-x64.tar.gz"
    sha256 "5c4e7a2808cb69ea8ab4e750cc1bff828782afa42087f544319b0336b4fb0597"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210507.0.95627/kopia-20210507.0.95627-linux-arm.tar.gz"
    sha256 "c71f28cb8eea47ac5397037e7031181ae47b02c486cbf2a7107c4bfef4eff6cd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210507.0.95627/kopia-20210507.0.95627-linux-arm64.tar.gz"
    sha256 "3499f62083ea92c2b4c85a79a510c24bf95f43f8f4ff1aa8d509e68724bf2d7f"
  end

  def install
    bin.install "kopia"
  end
end
