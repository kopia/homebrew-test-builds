# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241117.0.222658"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241117.0.222658/kopia-20241117.0.222658-macOS-x64.tar.gz"
    sha256 "ce1ff1b78f970b4e61f11908a5c05183128caafe481ba1618cf445e876acd79c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241117.0.222658/kopia-20241117.0.222658-macOS-arm64.tar.gz"
    sha256 "87b3954edec39db1a558688265d050c6617c9c439f6a448286a39605963aa653"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241117.0.222658/kopia-20241117.0.222658-linux-x64.tar.gz"
    sha256 "13474b36ec2ad6fe49f74edb0c15f7ff3c531fa2126e8af5e36b80fa4f3ca9da"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241117.0.222658/kopia-20241117.0.222658-linux-arm.tar.gz"
    sha256 "f83d1b99c7503faf6f181c7f4b31024ba7249142aed5199fe9758aad92f1fa4e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241117.0.222658/kopia-20241117.0.222658-linux-arm64.tar.gz"
    sha256 "573e58e17779a4c6bdc54b9a1d0258f50c55361a5717bf75ea5a8a8002d76065"
  end

  def install
    bin.install "kopia"
  end
end
