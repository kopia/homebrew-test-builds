# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241116.0.140948"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.140948/kopia-20241116.0.140948-macOS-x64.tar.gz"
    sha256 "4dd8573e2acf4179a07d88f1a406210f4971e9aa0baf4377d2fbb3e0789b3ab8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.140948/kopia-20241116.0.140948-macOS-arm64.tar.gz"
    sha256 "b30bfb34481eef83d72c2aadc23a0702ed05a1a1cff5cd068d11f71893627287"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.140948/kopia-20241116.0.140948-linux-x64.tar.gz"
    sha256 "03879977e3dce02a0d10e69f11fc8a2051ced17ca6f3275515353674e88fcf93"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.140948/kopia-20241116.0.140948-linux-arm.tar.gz"
    sha256 "bdd5b45e458beb77680a58ebe7332bdaa068f9f7860fb07aa3139fe9f9aa239d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.140948/kopia-20241116.0.140948-linux-arm64.tar.gz"
    sha256 "d239b9afd268b753bb0715fef38e249e091259f8f40675bbd7aaed9420dbeac2"
  end

  def install
    bin.install "kopia"
  end
end
