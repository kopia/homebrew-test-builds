# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230328.0.41714"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.41714/kopia-20230328.0.41714-macOS-x64.tar.gz"
    sha256 "538dced3b619c5d430bf1e0232cce8bd2f41359eae7678c496880cefe770cc35"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.41714/kopia-20230328.0.41714-macOS-arm64.tar.gz"
    sha256 "b9d339777cd27343e5f69c5b224a9800d75b0a045bb8df9992bc6a6ff4f32480"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.41714/kopia-20230328.0.41714-linux-x64.tar.gz"
    sha256 "a9578c8dfa3538f9f46b32a363f2030a5457c24417a36ae0831dbb4006194d78"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.41714/kopia-20230328.0.41714-linux-arm.tar.gz"
    sha256 "89d8dd4705620482e0857ea42e2ad8f171befd2375297fa1d52174a6f5ce2eb1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.41714/kopia-20230328.0.41714-linux-arm64.tar.gz"
    sha256 "6c01d3c9dda64684decfd1fff2526b5de868249cccf31937e1cd26028c483177"
  end

  def install
    bin.install "kopia"
  end
end
