# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220219.0.120425"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220219.0.120425/kopia-20220219.0.120425-macOS-x64.tar.gz"
    sha256 "26af178817870bf1c6c4b918f18a4d932a1b2f213b544c10c2aa218e51f9cf81"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220219.0.120425/kopia-20220219.0.120425-macOS-arm64.tar.gz"
    sha256 "32564492b495a5144d4a61c2685be8ccfbaafd8d5cf8417250a396c468762df9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220219.0.120425/kopia-20220219.0.120425-linux-x64.tar.gz"
    sha256 "9a3d54e17431b7d875d6547ce9142bbae58508e60b4eaff2c90046a9380244f3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220219.0.120425/kopia-20220219.0.120425-linux-arm.tar.gz"
    sha256 "f5874afb58bea7a1b8c921d83a70a925cb18cffc8c65ea70dd6b199d44329889"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220219.0.120425/kopia-20220219.0.120425-linux-arm64.tar.gz"
    sha256 "c5a18e7264c0ab5ccfaa6f3a6ae18636c8aa358b9ea54d8a550b1def1e2643ac"
  end

  def install
    bin.install "kopia"
  end
end
