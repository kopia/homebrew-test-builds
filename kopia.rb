# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260616.0.174334"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260616.0.174334/kopia-20260616.0.174334-macOS-x64.tar.gz"
    sha256 "e3183c4d5e5aca464101a47d5a518b8c98a79bedde01e6bef6500dbb30253db8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260616.0.174334/kopia-20260616.0.174334-macOS-arm64.tar.gz"
    sha256 "f468b74b115469a911dfeaf1146bf581e1cbaba9ed253238ba76169952f171f6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260616.0.174334/kopia-20260616.0.174334-linux-x64.tar.gz"
    sha256 "10b8bc8f66456dc9509cf7f16c3873e514a927644b1487dd162ca11d87e5f23b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260616.0.174334/kopia-20260616.0.174334-linux-arm.tar.gz"
    sha256 "0c795f240888e75d8d3620dad6c3d82bdf1c6fc2b0999ba0d5ea43f345344e47"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260616.0.174334/kopia-20260616.0.174334-linux-arm64.tar.gz"
    sha256 "f8507ffeb214300162a1fad814fd20917616c52180c2989677a5842946c806bd"
  end

  def install
    bin.install "kopia"
  end
end
