# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220813.0.84922"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220813.0.84922/kopia-20220813.0.84922-macOS-x64.tar.gz"
    sha256 "0891e8f1c972ecd966462265c7830c3b0c4c5675467834c5cef7c4a3330fb65b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220813.0.84922/kopia-20220813.0.84922-macOS-arm64.tar.gz"
    sha256 "2e7ea15243bae28ad11dc7412433f2d34c0a347cfbe4ffe834f8d380cf854f4e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220813.0.84922/kopia-20220813.0.84922-linux-x64.tar.gz"
    sha256 "8e58bb0f215ae5c61afe71116feed7eb11bf59d9145082d9897ff87973eebfd0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220813.0.84922/kopia-20220813.0.84922-linux-arm.tar.gz"
    sha256 "3386c49c72be8bc6b6ffbb1b9310f9aecf3b60d3a200c83f3cfc88740a6845ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220813.0.84922/kopia-20220813.0.84922-linux-arm64.tar.gz"
    sha256 "39a3203ffeb5484b9836a268a7c8f909dd81d1c6f7b861495693a86e6a68671d"
  end

  def install
    bin.install "kopia"
  end
end
