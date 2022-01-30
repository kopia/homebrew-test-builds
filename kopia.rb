# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220129.0.182852"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.182852/kopia-20220129.0.182852-macOS-x64.tar.gz"
    sha256 "212aaa6f9fd01fd47f0d72fe5b2975ad2797af59d1e09aaebae644bd811b2dd7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.182852/kopia-20220129.0.182852-macOS-arm64.tar.gz"
    sha256 "c17c9647b8f9c8ed6dfef65129a3587f33e400c267d16e4072e2cb7161dfc1c2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.182852/kopia-20220129.0.182852-linux-x64.tar.gz"
    sha256 "0e9e55d3b46f9326fa3fa74881c86e1e20c00c8380d8c953f3934794f17b4f22"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.182852/kopia-20220129.0.182852-linux-arm.tar.gz"
    sha256 "23e55572d58f39b576c08db54d97ed28a691ae6b3cab454d542a1e7740578f5e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.182852/kopia-20220129.0.182852-linux-arm64.tar.gz"
    sha256 "09f2b86a01c50cc9d8b921e23a0904f9f19f16ece1313206748bbc0ed586e964"
  end

  def install
    bin.install "kopia"
  end
end
