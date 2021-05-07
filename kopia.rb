# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210507.0.124347"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210507.0.124347/kopia-20210507.0.124347-macOS-x64.tar.gz"
    sha256 "2cdd90003a2ef65fc106d511a41e8937006fe31bed361337ed7ba11c7d058150"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210507.0.124347/kopia-20210507.0.124347-macOS-arm64.tar.gz"
    sha256 "08d960fcc77ddf4cb7e79a448d7b9ed02040e24dcb991edfea1a8ee26c8c06ee"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210507.0.124347/kopia-20210507.0.124347-linux-x64.tar.gz"
    sha256 "b748ff28230f290f8c83f2326451b7a53f2c5c8fedc0b8e87eca90b236e5db39"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210507.0.124347/kopia-20210507.0.124347-linux-arm.tar.gz"
    sha256 "1048f352d64c047311cc251f50b815fb8e433aa80b96d3c2dc306e09ef722164"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210507.0.124347/kopia-20210507.0.124347-linux-arm64.tar.gz"
    sha256 "a1d7d60081f78d058f9735382c16373b5a9204fc5db60a65de78256e13f2e4d0"
  end

  def install
    bin.install "kopia"
  end
end
