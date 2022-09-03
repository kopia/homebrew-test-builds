# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220903.0.34454"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220903.0.34454/kopia-20220903.0.34454-macOS-x64.tar.gz"
    sha256 "e73c1fd4d475725e54553bd8098d858a297032e19172f83c1e65666fdfaf6410"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220903.0.34454/kopia-20220903.0.34454-macOS-arm64.tar.gz"
    sha256 "a0d58b2c535ca2474998e3c6c1704031d3a3b5d245424a040b971e468703dd2e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220903.0.34454/kopia-20220903.0.34454-linux-x64.tar.gz"
    sha256 "b0ecb2b3d581a308d326392cf581a79d9632132d0c12e65595675aa2db51f480"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220903.0.34454/kopia-20220903.0.34454-linux-arm.tar.gz"
    sha256 "16fc5a4c53fcdf63847acae7cd32faa9c135ea91003f530e82f0d5953a7ed5a5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220903.0.34454/kopia-20220903.0.34454-linux-arm64.tar.gz"
    sha256 "e0593743c0b7bae243097e9031a262e5378106de3201f9bc9e9716ba7d34ba9e"
  end

  def install
    bin.install "kopia"
  end
end
