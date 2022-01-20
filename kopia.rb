# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220119.0.171223"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220119.0.171223/kopia-20220119.0.171223-macOS-x64.tar.gz"
    sha256 "5cbd1e22b26b3eb27f7b3783c6d38585257d5198bbe9f0b36e8733532493294d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220119.0.171223/kopia-20220119.0.171223-macOS-arm64.tar.gz"
    sha256 "aecb99f79e9ffedadbd6dc2fbb73238b7fe4db5f0e522d204f4316005ddfbc75"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220119.0.171223/kopia-20220119.0.171223-linux-x64.tar.gz"
    sha256 "6ae5b87796ba574f9473452b38af75f4be5afad57e36c51d91c6802db6da3d71"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220119.0.171223/kopia-20220119.0.171223-linux-arm.tar.gz"
    sha256 "88ef2318a4bdde1e69310c365cca9aacbdd9f54e4096f2bb935282a85f73f19d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220119.0.171223/kopia-20220119.0.171223-linux-arm64.tar.gz"
    sha256 "9e4eb827ea295e0295972633ae5a3728dca7c3a3a8842787f0898abf140c7ac3"
  end

  def install
    bin.install "kopia"
  end
end
