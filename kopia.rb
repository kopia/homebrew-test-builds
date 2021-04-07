# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210407.0.142105"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.142105/kopia-20210407.0.142105-macOS-x64.tar.gz"
    sha256 "762ff9ce0bfd14c412c359574d72381dfd0b2598da74b3bbdffcc46697f66388"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.142105/kopia-20210407.0.142105-macOS-arm64.tar.gz"
    sha256 "4b8b1c5ce23c7b5f3340a26bc294a4d97e4db9ff15f419cd32614e87d806a6ab"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.142105/kopia-20210407.0.142105-linux-x64.tar.gz"
    sha256 "45ef5f83383bf89a714b7b1ae7d5d0d76774bad010611660e2293bbce898eda8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.142105/kopia-20210407.0.142105-linux-arm.tar.gz"
    sha256 "3b6af2fdd71c152f79fe8b912eecd503c0f6afd713bc44677696fe2857691cb2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210407.0.142105/kopia-20210407.0.142105-linux-arm64.tar.gz"
    sha256 "4c6e6e079c1ef137bcbacd23d06fe71fd3616d13d216a43b87c05816057f9b50"
  end

  def install
    bin.install "kopia"
  end
end
