# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230821.0.170050"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.170050/kopia-20230821.0.170050-macOS-x64.tar.gz"
    sha256 "3a53cb49a75970e01ea57b1809e38d712dfcef013a82bfa3c4bfd33bcf71f2ec"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.170050/kopia-20230821.0.170050-macOS-arm64.tar.gz"
    sha256 "d05270d370f9c8b5b8e079370a7912a8f11efc4a6182b40e65d3cf2a94f9bdf4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.170050/kopia-20230821.0.170050-linux-x64.tar.gz"
    sha256 "18ad39e17612df5637a14e8c64054f03f4275b82a550240f85db50183aa19898"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.170050/kopia-20230821.0.170050-linux-arm.tar.gz"
    sha256 "55c4b57af9aa2b9752283011b584285d99c3b59717e086cdf762ccfc6abd7959"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.170050/kopia-20230821.0.170050-linux-arm64.tar.gz"
    sha256 "0663de4061a4f27f986a7edd568c1e943f586ae6d295ca22ccb00825b33f3316"
  end

  def install
    bin.install "kopia"
  end
end
