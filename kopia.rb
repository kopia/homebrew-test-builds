# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240408.0.95247"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240408.0.95247/kopia-20240408.0.95247-macOS-x64.tar.gz"
    sha256 "ca7cbdd93ea3d8cc0f75033e647a71e29a99043f23689983b00b211775bc92e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240408.0.95247/kopia-20240408.0.95247-macOS-arm64.tar.gz"
    sha256 "da683bb5de737583c65c5e238460d2b2aab54865502d351df3248ec5160d238d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240408.0.95247/kopia-20240408.0.95247-linux-x64.tar.gz"
    sha256 "78d54dbd19a8af3907d9b3e049c0fb55c522d63c873373ccabd21853e9abfdab"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240408.0.95247/kopia-20240408.0.95247-linux-arm.tar.gz"
    sha256 "345ba2210644144acdf0cdb10ae824ec7d01475933ed373ab9c3fccb6515982a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240408.0.95247/kopia-20240408.0.95247-linux-arm64.tar.gz"
    sha256 "fe14ec18e4e7f5eb168baf36d5a44c250174fe4bc4b84d361d18ee63df9beb10"
  end

  def install
    bin.install "kopia"
  end
end
