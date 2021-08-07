# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210806.0.215438"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210806.0.215438/kopia-20210806.0.215438-macOS-x64.tar.gz"
    sha256 "afc02e180d1754a9124b6a3fc073e371458064c115e3ddcd1eb7aecc98e935dd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210806.0.215438/kopia-20210806.0.215438-macOS-arm64.tar.gz"
    sha256 "07ba3c47e6066cc97360b833cfc6a5703fe6f84b5f4f0030a87241b7e4b7b112"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210806.0.215438/kopia-20210806.0.215438-linux-x64.tar.gz"
    sha256 "539e7825cab703fff711a5b4e72a4fc76d0e17c6ea6a83a0171a30da12c66048"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210806.0.215438/kopia-20210806.0.215438-linux-arm.tar.gz"
    sha256 "275b2f992607b3901402c476591d0f14208e920d37e3deace4b8cac3d93d7c10"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210806.0.215438/kopia-20210806.0.215438-linux-arm64.tar.gz"
    sha256 "70f30b4dd8d2b1f4e3b26457b558af402bf210c01feed630ed7129193e31c38f"
  end

  def install
    bin.install "kopia"
  end
end
