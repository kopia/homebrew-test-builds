# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220210.0.142839"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220210.0.142839/kopia-20220210.0.142839-macOS-x64.tar.gz"
    sha256 "e90634d850242d9b024946e4ea169538178352e15da836d4756443fc733f107b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220210.0.142839/kopia-20220210.0.142839-macOS-arm64.tar.gz"
    sha256 "f0049ae00b585b03832d196bbf14c9731735603dc778e465b46fe41aa8a3c62a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220210.0.142839/kopia-20220210.0.142839-linux-x64.tar.gz"
    sha256 "8f745b06fc61ce472c61f057a4602ce54004e1cb3f8862dabb03a8ba78416c46"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220210.0.142839/kopia-20220210.0.142839-linux-arm.tar.gz"
    sha256 "710eb14f8d4d628e36fa227350d8835eac24fa522b406b3e7fdf83fa24b59340"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220210.0.142839/kopia-20220210.0.142839-linux-arm64.tar.gz"
    sha256 "189855833c7e09a131514534c46299d23e652e93b520250cc245ea074730795d"
  end

  def install
    bin.install "kopia"
  end
end
