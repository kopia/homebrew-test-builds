# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241015.0.214019"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241015.0.214019/kopia-20241015.0.214019-macOS-x64.tar.gz"
    sha256 "cb8dad2745fa250dcce360df9a739e6d97cc84ac90926588063b1515ef9c41a0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241015.0.214019/kopia-20241015.0.214019-macOS-arm64.tar.gz"
    sha256 "0874e34140e6e3f5559c9dd73d841d75eb3527ee8ddb6d06d29b2efccdb799f0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241015.0.214019/kopia-20241015.0.214019-linux-x64.tar.gz"
    sha256 "173bdb3cab3d428f2e763d272fade1a84d392793be71af82e022803cff75bbb8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241015.0.214019/kopia-20241015.0.214019-linux-arm.tar.gz"
    sha256 "4ccfd0bce9e06601051adc8dc6512e232f7583b628e26189a127d6acdfe5150e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241015.0.214019/kopia-20241015.0.214019-linux-arm64.tar.gz"
    sha256 "147edf313e39954a12bc4e8cf40c52982a90472b4b7372fc7ed2421f35e3d783"
  end

  def install
    bin.install "kopia"
  end
end
