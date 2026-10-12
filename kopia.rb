# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261012.0.185215"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261012.0.185215/kopia-20261012.0.185215-macOS-x64.tar.gz"
    sha256 "f5b719e6b152a406097382086f6ad21c94c7b37b050e08cf73c54fe2a57abb02"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261012.0.185215/kopia-20261012.0.185215-macOS-arm64.tar.gz"
    sha256 "d95d94d56ce4298fd973962f3005cbeef9c0c5907c411786b255390aadcb9204"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261012.0.185215/kopia-20261012.0.185215-linux-x64.tar.gz"
    sha256 "1055146372e60ccad25cb990277a8ba8072e2612fc6ce48bbdaacef9b5f0e645"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261012.0.185215/kopia-20261012.0.185215-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261012.0.185215/kopia-20261012.0.185215-linux-arm64.tar.gz"
    sha256 "5e04bb42d5fb006ca5d5d41d7cf1a33a1d8fea239af402d607f09fd19ae8b143"
  end

  def install
    bin.install "kopia"
  end
end
