# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221209.0.232514"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221209.0.232514/kopia-20221209.0.232514-macOS-x64.tar.gz"
    sha256 "bd12bf92002211d47f2ca16bfc7ba7121084558dd305fad9acdc33b20aca28b7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221209.0.232514/kopia-20221209.0.232514-macOS-arm64.tar.gz"
    sha256 "074db287b71e416f04e7479027b9d1d1b8a894fa7fd550e2ca001337cfb6b1e5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221209.0.232514/kopia-20221209.0.232514-linux-x64.tar.gz"
    sha256 "2d792bf7035e393f9bad792cdfd711dbcbf23b8ca4d2bdf4bdd43521f47eb2a5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221209.0.232514/kopia-20221209.0.232514-linux-arm.tar.gz"
    sha256 "516b64141a008dcf7e8807b57bb6e32db6ab0a74567dae491a401bec257515a7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221209.0.232514/kopia-20221209.0.232514-linux-arm64.tar.gz"
    sha256 "33984cc25b53bbad1f1ac15247ece7b921ae087e7843d910c307e209042ded1a"
  end

  def install
    bin.install "kopia"
  end
end
