# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241018.0.161218"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241018.0.161218/kopia-20241018.0.161218-macOS-x64.tar.gz"
    sha256 "9ada14fecf6acbdbb30b1502cf69bcceab959f7be8f4e89aeb6dc92301d6426e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241018.0.161218/kopia-20241018.0.161218-macOS-arm64.tar.gz"
    sha256 "4a808b6ee525661a257cd440802dd7c795eaa718bdc7cc3db869f89569e46ce2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241018.0.161218/kopia-20241018.0.161218-linux-x64.tar.gz"
    sha256 "2ed530299eb234dc8ba052d6092953d32bfe4c2019000b4d52d647a108dfa092"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241018.0.161218/kopia-20241018.0.161218-linux-arm.tar.gz"
    sha256 "47caf66f26c4285f0b95e168ffdebba706c0d88865a82f706207e6d099e39aa1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241018.0.161218/kopia-20241018.0.161218-linux-arm64.tar.gz"
    sha256 "fbd4be665ceb5cdf15cd67037f13f68f3647821e801ae354e1ec37d751a2656f"
  end

  def install
    bin.install "kopia"
  end
end
