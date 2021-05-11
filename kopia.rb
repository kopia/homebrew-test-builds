# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210510.0.201131"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201131/kopia-20210510.0.201131-macOS-x64.tar.gz"
    sha256 "94a4dcd7982d213c2dc6874b8affdd561911896866d5e72f8f05d1b01676e8ed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201131/kopia-20210510.0.201131-macOS-arm64.tar.gz"
    sha256 "8b53b3e60ad1b5d0637d94b60a68ac0809c80b6a05bc1cd7112a3132413f865b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201131/kopia-20210510.0.201131-linux-x64.tar.gz"
    sha256 "642745c63515f94e0a1e838f8dbd82e1e0bb06dcf6c110939cd05293bc9e9316"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201131/kopia-20210510.0.201131-linux-arm.tar.gz"
    sha256 "7abdd7a09078a4336768d9e2cf3f0bcf68b0228f99cff3b32e74ce5a99f3dcbd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201131/kopia-20210510.0.201131-linux-arm64.tar.gz"
    sha256 "7b184fe49b5fa3cb46e405a11d6fdc470e6ca98e74ebaf649764b8575dc2d486"
  end

  def install
    bin.install "kopia"
  end
end
