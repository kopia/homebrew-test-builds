# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220501.0.182335"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220501.0.182335/kopia-20220501.0.182335-macOS-x64.tar.gz"
    sha256 "fe2e156cd7ae45b931983c7df40e9d482a71bc3dcbb99ecb7c29e888a2a7a467"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220501.0.182335/kopia-20220501.0.182335-macOS-arm64.tar.gz"
    sha256 "1d677501ecf62c52ce1ca75c90a80e39e79dcd7a5c7e2262e7deec7daf2b47b1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220501.0.182335/kopia-20220501.0.182335-linux-x64.tar.gz"
    sha256 "e2c1125f12befeec67e764ce7dda4c2ee8654bb0e726f0f963103acab197e8d8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220501.0.182335/kopia-20220501.0.182335-linux-arm.tar.gz"
    sha256 "4cf15094118240309c7b8e1743458854579e7317009cbf0626145110ffbcf4ac"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220501.0.182335/kopia-20220501.0.182335-linux-arm64.tar.gz"
    sha256 "c14bbf5062b1d30a5e9dfe21d43d58180af33f83fbefbefeda7f71861e6732e1"
  end

  def install
    bin.install "kopia"
  end
end
