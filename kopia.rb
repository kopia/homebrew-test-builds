# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210807.0.113033"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.113033/kopia-20210807.0.113033-macOS-x64.tar.gz"
    sha256 "208815c94d6108a554f096178db258bc607923fdaefad718d77ed6e31ea27f36"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.113033/kopia-20210807.0.113033-macOS-arm64.tar.gz"
    sha256 "776798b08abd6444e3e36c3eb662e8c8527e8b23c6c962af97b92375a0ee4dc1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.113033/kopia-20210807.0.113033-linux-x64.tar.gz"
    sha256 "bbf36034685c34f43a73ddd10fdfa81fe1fe300391ad9847f22b6e05d13b5f1c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.113033/kopia-20210807.0.113033-linux-arm.tar.gz"
    sha256 "243547a34fd3ad3c56221a9eb1546bd3df731b6ed6e29b60fe6139ba45c5ea16"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.113033/kopia-20210807.0.113033-linux-arm64.tar.gz"
    sha256 "a8f0545c8e72f960933d44550126a24c12ddd2db483b532608432fcc3f5a626c"
  end

  def install
    bin.install "kopia"
  end
end
