# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240422.0.183723"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240422.0.183723/kopia-20240422.0.183723-macOS-x64.tar.gz"
    sha256 "65e3469271e30abdfe97f1ec71c7de696280f415333f42a6982195105700da95"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240422.0.183723/kopia-20240422.0.183723-macOS-arm64.tar.gz"
    sha256 "e9727b50afd55f316db5e516db5aed24061656587f91490923839bd12c789f2b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240422.0.183723/kopia-20240422.0.183723-linux-x64.tar.gz"
    sha256 "64afe2bff93d75e5ef56d3838d2bcb25ce468fb22ad5fefc370c03f392a91282"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240422.0.183723/kopia-20240422.0.183723-linux-arm.tar.gz"
    sha256 "d19e2f9deeb9126f54e089d8ce1acc71f6a2ea3955d06013cbe0833fc0fb1368"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240422.0.183723/kopia-20240422.0.183723-linux-arm64.tar.gz"
    sha256 "983c9184485d4483bd26b7cf13d781793b03d4d52a69d2295d50c7b66c54de89"
  end

  def install
    bin.install "kopia"
  end
end
