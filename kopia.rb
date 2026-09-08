# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260908.0.31923"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260908.0.31923/kopia-20260908.0.31923-macOS-x64.tar.gz"
    sha256 "a58118b01edeb58ad74aac752caf22322a1589a9cbbdd7c36a30d16b2617acd6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260908.0.31923/kopia-20260908.0.31923-macOS-arm64.tar.gz"
    sha256 "3a0e8b5f5128dd35628b4ff7dbbad9da0fb64d6007eb56d9b6b18568538a782a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260908.0.31923/kopia-20260908.0.31923-linux-x64.tar.gz"
    sha256 "91264c2fb824c40ac01838faec6394c110ab2131c8e12c98c941de87a83701b2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260908.0.31923/kopia-20260908.0.31923-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260908.0.31923/kopia-20260908.0.31923-linux-arm64.tar.gz"
    sha256 "b2d9fb45475d8d2e8a1d4bd3420c0f004901b9cd08f8972812a1f50342969bd3"
  end

  def install
    bin.install "kopia"
  end
end
