# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220201.0.230356"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.230356/kopia-20220201.0.230356-macOS-x64.tar.gz"
    sha256 "a557e13a6039f79cc04bf6e3aa5fd1f20713f2b7859f27cdc38bb0faf57a01d1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.230356/kopia-20220201.0.230356-macOS-arm64.tar.gz"
    sha256 "57df7b8472dcb1e49142487c7096b29203b8e65e5232259b17da8d348abdbc95"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.230356/kopia-20220201.0.230356-linux-x64.tar.gz"
    sha256 "90bb27e20bfada2abb532d3c4920d10420ead91831b6a2bc4bbf34093ef22165"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.230356/kopia-20220201.0.230356-linux-arm.tar.gz"
    sha256 "623d3ba68a70b82747c86442a5fcf654b839c261c49552d636fc17eff06de025"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.230356/kopia-20220201.0.230356-linux-arm64.tar.gz"
    sha256 "887ab36f1d48a88e7d09b077c5297626e46e6235323e2d4c333575ba8a33dc02"
  end

  def install
    bin.install "kopia"
  end
end
