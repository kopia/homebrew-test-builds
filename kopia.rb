# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210402.0.215601"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.215601/kopia-20210402.0.215601-macOS-x64.tar.gz"
    sha256 "7d48de4cff81425d3ad0c2796739f52da163127159d38c97f565c97093919599"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.215601/kopia-20210402.0.215601-macOS-arm64.tar.gz"
    sha256 "b32bf310fc2e7b499bbac154332e6d9529117e800ee021f0de1694970598fa7e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.215601/kopia-20210402.0.215601-linux-x64.tar.gz"
    sha256 "91a293f37b2bbc45d676024f60ae268e6893a2a95fc87fe1d93ae6f7eb494316"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.215601/kopia-20210402.0.215601-linux-arm.tar.gz"
    sha256 "5a1af916f28cd593b1e023e4c3d6ec14e31ab4b7cc494e608b4fe6bc97a3bed0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.215601/kopia-20210402.0.215601-linux-arm64.tar.gz"
    sha256 "c9d069cb7861258c0071f6ae0aecd08adbb3f67d79d1a1bca6a58ada859fcc35"
  end

  def install
    bin.install "kopia"
  end
end
