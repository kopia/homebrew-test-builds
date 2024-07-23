# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240722.0.173150"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240722.0.173150/kopia-20240722.0.173150-macOS-x64.tar.gz"
    sha256 "629a4a0a541a766d1ae0b9f0f7133cf8dc70c222d544abd6637036bf1e2a491b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240722.0.173150/kopia-20240722.0.173150-macOS-arm64.tar.gz"
    sha256 "c45114dc1aa57e2215c8b2a5d7792a611107b8896861a5c0df5b4ab04a37b5b8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240722.0.173150/kopia-20240722.0.173150-linux-x64.tar.gz"
    sha256 "881437a90ae7595b99bc9fe1ff2d8612ca5a0707b6322c2384dbb9d7e6bf78c1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240722.0.173150/kopia-20240722.0.173150-linux-arm.tar.gz"
    sha256 "8562e09957750307df13dfc03ae7ffd28dd39ae22e1d936b263f06af24111e55"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240722.0.173150/kopia-20240722.0.173150-linux-arm64.tar.gz"
    sha256 "941a2eb8d82b8cdb0284b1136e986c2f8b2ca379684c46a50282f6cbdccade42"
  end

  def install
    bin.install "kopia"
  end
end
