# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211012.0.225224"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211012.0.225224/kopia-20211012.0.225224-macOS-x64.tar.gz"
    sha256 "4da5ad51958179160967e22b493c74da599ede7f1643cb16c6f1eb0fd98cb889"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211012.0.225224/kopia-20211012.0.225224-macOS-arm64.tar.gz"
    sha256 "f2c96082a41dc081cbf4a6c12ac98ad3bcb744629ac98479b7dc86dbfab49b83"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211012.0.225224/kopia-20211012.0.225224-linux-x64.tar.gz"
    sha256 "908699e9d07811ca0626c8c8d89b34c360ab68112055c4574da8106ecb24532d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211012.0.225224/kopia-20211012.0.225224-linux-arm.tar.gz"
    sha256 "e90ea2902f9788dd5eff72f8c5cb7fdadd590f80062852562653eef0a8594848"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211012.0.225224/kopia-20211012.0.225224-linux-arm64.tar.gz"
    sha256 "244f219f0f740ee9ac7f0f96306ac057745f712cb9696c49ebf95d802f9f5762"
  end

  def install
    bin.install "kopia"
  end
end
