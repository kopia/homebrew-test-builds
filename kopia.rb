# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231221.0.183952"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.183952/kopia-20231221.0.183952-macOS-x64.tar.gz"
    sha256 "3eb491b35a503f66a98d789cc7c758915445fbfc735a97713800efc02b00587a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.183952/kopia-20231221.0.183952-macOS-arm64.tar.gz"
    sha256 "1b280ccb919aa237ba880ddbb5403e6d4738d0f6c0baea68b7660976f56e4b6d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.183952/kopia-20231221.0.183952-linux-x64.tar.gz"
    sha256 "5499eb57e2e8dea89ed2465b536dd61578d561ab40c915ee5f664f7becf6458f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.183952/kopia-20231221.0.183952-linux-arm.tar.gz"
    sha256 "6bdff1d2d2f17b03afd589d0689d45d3d3f8af46aa88dec69f40b122bc8eadd7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.183952/kopia-20231221.0.183952-linux-arm64.tar.gz"
    sha256 "a9c2bcea47e5f6e93246742cf529cacd64c99200a436bb62a5858bd8187bd297"
  end

  def install
    bin.install "kopia"
  end
end
