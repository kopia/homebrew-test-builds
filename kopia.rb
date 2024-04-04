# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240404.0.200351"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.200351/kopia-20240404.0.200351-macOS-x64.tar.gz"
    sha256 "bb154b75a5132aa46cc6de64c4fe54143fd30cf95e9717a9894bb5c6a51b97ba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.200351/kopia-20240404.0.200351-macOS-arm64.tar.gz"
    sha256 "f5b3e32c2953eab4ef40fa0dd4d687091b9e26adff9f7523b9d42a3f99ee2606"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.200351/kopia-20240404.0.200351-linux-x64.tar.gz"
    sha256 "3db9806b1702856d4fe657b7c8798c2151676511e2c88fdf5c52f10ebfb6d260"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.200351/kopia-20240404.0.200351-linux-arm.tar.gz"
    sha256 "6b51662e4c3c4714b3f8a2e3a9f69a1959a6b6add2a566814d366781decde26c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.200351/kopia-20240404.0.200351-linux-arm64.tar.gz"
    sha256 "f3ea83f2367d39983d1dc08c122c2af363d6cf65ba0220ee935873ff0cc4e53a"
  end

  def install
    bin.install "kopia"
  end
end
