# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.210643"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.210643/kopia-20220202.0.210643-macOS-x64.tar.gz"
    sha256 "2bab6dfd4fb3dc33469e6b3c9b202fc1a2e19cdf29877d158c7205e237676c3a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.210643/kopia-20220202.0.210643-macOS-arm64.tar.gz"
    sha256 "d388bff253c3fa4b99479a492ec7f73caf21df1d31959761e1a9961fcab782a0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.210643/kopia-20220202.0.210643-linux-x64.tar.gz"
    sha256 "b54e2ca2437d60a19ebc04355387f7d152b5abe513df44bb03c23612f0749a6d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.210643/kopia-20220202.0.210643-linux-arm.tar.gz"
    sha256 "9dff9200f8f7485564c173deec985268838411397c4bafedb284ec34c14e9c4a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.210643/kopia-20220202.0.210643-linux-arm64.tar.gz"
    sha256 "3059c7a5dc0a376a746b4b95531c6cc6eb658cf415d57d628af1928043a15680"
  end

  def install
    bin.install "kopia"
  end
end
