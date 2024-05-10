# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240510.0.94713"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240510.0.94713/kopia-20240510.0.94713-macOS-x64.tar.gz"
    sha256 "d6cf274d4aaafba77c83e9faad861101478c8153ee458905808e1d9a8044c93f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240510.0.94713/kopia-20240510.0.94713-macOS-arm64.tar.gz"
    sha256 "734a8b87bfb316f0518d42f81dde33d25ac61bc728272dfab5d87ae8053a92ba"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240510.0.94713/kopia-20240510.0.94713-linux-x64.tar.gz"
    sha256 "5a27bc21e07a9297c02ee07c5d88cdba69aaaaffbd02339879b87d72133ddde4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240510.0.94713/kopia-20240510.0.94713-linux-arm.tar.gz"
    sha256 "6ecd756c54d762d76da44083713aba7a0a8bf6e7edb1f3970f6b0da37723a30d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240510.0.94713/kopia-20240510.0.94713-linux-arm64.tar.gz"
    sha256 "0245db7e796e3facfe78f0b17a823e158f2e823f2e4053938326383a7fede6d3"
  end

  def install
    bin.install "kopia"
  end
end
