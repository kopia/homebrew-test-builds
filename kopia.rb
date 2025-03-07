# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250307.0.124114"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250307.0.124114/kopia-20250307.0.124114-macOS-x64.tar.gz"
    sha256 "26bb2d2f0c9643819b37dac97c33e6d64a1c93de0e8a05cc02566626b0f62e3a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250307.0.124114/kopia-20250307.0.124114-macOS-arm64.tar.gz"
    sha256 "a2ba112b027aa21f7cb2aa53f4fd16b81e256d246e71d8b6fe08f5efa08e2112"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250307.0.124114/kopia-20250307.0.124114-linux-x64.tar.gz"
    sha256 "ee937a9bdcf895689c18fe9a1a27687edf23381d59b6c77ea36a2704022ee3bf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250307.0.124114/kopia-20250307.0.124114-linux-arm.tar.gz"
    sha256 "bc005a1f4b1bbf774d0c482f5d16c93ad9a6dd5bbb820fda589a77bcb9083513"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250307.0.124114/kopia-20250307.0.124114-linux-arm64.tar.gz"
    sha256 "3686e12cd5c2ab8d91b2b435c4ec3fb50ffaa272a5914ae432887b46051e2387"
  end

  def install
    bin.install "kopia"
  end
end
