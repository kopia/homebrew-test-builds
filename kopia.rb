# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220710.0.162525"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.162525/kopia-20220710.0.162525-macOS-x64.tar.gz"
    sha256 "2ee6f94a3911767eaa72d75dfe0e96e9b0c0be97c8271781f6e43e9a5f28b26a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.162525/kopia-20220710.0.162525-macOS-arm64.tar.gz"
    sha256 "134840c4970bedca7ddfaf3029fc487fecaff742bc02f24d55d76cb4b2b2dcc8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.162525/kopia-20220710.0.162525-linux-x64.tar.gz"
    sha256 "a06ec98c5d95856a7e169f04af496df1d05fee7d8a5804c34a0770f381879287"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.162525/kopia-20220710.0.162525-linux-arm.tar.gz"
    sha256 "4377529a85c53657aa23ec51ea8558cc2e875b09ec12669875b3e29f96280894"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.162525/kopia-20220710.0.162525-linux-arm64.tar.gz"
    sha256 "ce9ebe72a204398550e45bc5d5af8c74ed6441a95bb10e143a06287defdfda9e"
  end

  def install
    bin.install "kopia"
  end
end
