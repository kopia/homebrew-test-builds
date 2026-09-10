# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260910.0.30717"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.30717/kopia-20260910.0.30717-macOS-x64.tar.gz"
    sha256 "14dc56fe8fe2b66c81835891ae14365f9ac9253d4cd653d00e822a539adf9ec0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.30717/kopia-20260910.0.30717-macOS-arm64.tar.gz"
    sha256 "0588fe8438156cb9c61e01a5c52b583b1efa71a3042452121eb7d3f05db75095"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.30717/kopia-20260910.0.30717-linux-x64.tar.gz"
    sha256 "4e58a269855d1ae47d72510118fdaee4fb82ebbfa839de7d01fcdf934c750dbc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.30717/kopia-20260910.0.30717-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.30717/kopia-20260910.0.30717-linux-arm64.tar.gz"
    sha256 "70e794634aa5334248faa1b727c664e0dbbda3f88a8d28a6bc10cc925810cfd1"
  end

  def install
    bin.install "kopia"
  end
end
