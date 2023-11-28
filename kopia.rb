# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231127.0.181417"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.181417/kopia-20231127.0.181417-macOS-x64.tar.gz"
    sha256 "9d3178e816c5e7505ed26335e834eacbdf03ab693637787694abaea9cc6e0bed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.181417/kopia-20231127.0.181417-macOS-arm64.tar.gz"
    sha256 "f8fd160ce3b92a0f9103851e7fdb337724f7774ebadbfbae36a88b8f758399ad"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.181417/kopia-20231127.0.181417-linux-x64.tar.gz"
    sha256 "e711b1965293bccfca2a6e1a64a2fc9502ea4b3d5e22aeb397fd91965e796cf0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.181417/kopia-20231127.0.181417-linux-arm.tar.gz"
    sha256 "e6a0f91bd7d901a56573c1c6d04c9bdca1c32eabb3d141a020c04034a602b251"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.181417/kopia-20231127.0.181417-linux-arm64.tar.gz"
    sha256 "e19ac99e0c90c4f55ea8b69395524a65da5bef1f9f0c91b3fbdfa1768c401509"
  end

  def install
    bin.install "kopia"
  end
end
