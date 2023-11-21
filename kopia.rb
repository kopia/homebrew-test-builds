# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231121.0.101134"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231121.0.101134/kopia-20231121.0.101134-macOS-x64.tar.gz"
    sha256 "90c1a659010ead7e09a5e21f3c8d93d9c0b22a1895052d45c8e8a4c0a1c357dc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231121.0.101134/kopia-20231121.0.101134-macOS-arm64.tar.gz"
    sha256 "31306952d60789cc4ba481c547e85c897bfda27a31d5b40398f2a214a61fab9d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231121.0.101134/kopia-20231121.0.101134-linux-x64.tar.gz"
    sha256 "8d1ec11667635cc4cd274a4d0023be596def38403eccaf4466e696a596a8bfc0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231121.0.101134/kopia-20231121.0.101134-linux-arm.tar.gz"
    sha256 "428bd1f27b503a0e2b01336b22cc5da4ef68d5cc7a4d2f4873b04ff1f13936dc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231121.0.101134/kopia-20231121.0.101134-linux-arm64.tar.gz"
    sha256 "d7783549a0eb74fa43714c329977858520684859d012127c3e5bf0c1d6b145e5"
  end

  def install
    bin.install "kopia"
  end
end
