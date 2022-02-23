# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220222.0.214602"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220222.0.214602/kopia-20220222.0.214602-macOS-x64.tar.gz"
    sha256 "95eda5b49e9701a48e6bdb78c8e03c69fd211ad64419227b8a1ee5f8f32fed49"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220222.0.214602/kopia-20220222.0.214602-macOS-arm64.tar.gz"
    sha256 "982c8424018aeeaccfa9b8c1a3a795afe81daa688a905de8b88d39afc59a05a9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220222.0.214602/kopia-20220222.0.214602-linux-x64.tar.gz"
    sha256 "694a239062aa83c29081fbb790362d9645b32fcfd0aa4817de0a19628aa55f26"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220222.0.214602/kopia-20220222.0.214602-linux-arm.tar.gz"
    sha256 "8c0b362eb6e780b0589f5d96a86d77bdad419f8bac82ed96663a14f3ad0edcaa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220222.0.214602/kopia-20220222.0.214602-linux-arm64.tar.gz"
    sha256 "5b0d9ca0e3f1ec454d702e156718ef52f9c44a7c044f02b685ad7873e0296f1a"
  end

  def install
    bin.install "kopia"
  end
end
