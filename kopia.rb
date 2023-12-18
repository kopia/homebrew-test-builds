# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231218.0.95033"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231218.0.95033/kopia-20231218.0.95033-macOS-x64.tar.gz"
    sha256 "43830cce5c8303992b951874d9fc70099f76620ff272fa41574ce51b45127d49"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231218.0.95033/kopia-20231218.0.95033-macOS-arm64.tar.gz"
    sha256 "fc3e3540c5aa0b924603c37c4330b31faf5c4a2f39937fc67144f95ee7ec235e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231218.0.95033/kopia-20231218.0.95033-linux-x64.tar.gz"
    sha256 "f53e240d027df29c8cf9af5e6e678c53b71834a3a609d149cd3ade348c971044"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231218.0.95033/kopia-20231218.0.95033-linux-arm.tar.gz"
    sha256 "62023007a3fd970b523ff4ee7c5b53b331f67f6559004493213f9eaf2b8341fa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231218.0.95033/kopia-20231218.0.95033-linux-arm64.tar.gz"
    sha256 "08a5732d5c441b9328c12d61ee5f1378212c704188a2ae9310315a5c762c79fa"
  end

  def install
    bin.install "kopia"
  end
end
