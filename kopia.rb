# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231101.0.21125"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231101.0.21125/kopia-20231101.0.21125-macOS-x64.tar.gz"
    sha256 "b842781b03834afabb6df4a5b46d3b8b951fe4de48c7eff4ce723603b389511b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231101.0.21125/kopia-20231101.0.21125-macOS-arm64.tar.gz"
    sha256 "ce6dc42347bfd6299807e6f72bf38a78a52ebbc33bdd63421c4e1ba0e22e5f65"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231101.0.21125/kopia-20231101.0.21125-linux-x64.tar.gz"
    sha256 "8756147aa408ca86fcef33a973be70f4c7eb21ddf5558ba07825be266a6166bf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231101.0.21125/kopia-20231101.0.21125-linux-arm.tar.gz"
    sha256 "020781878ac4f97e498412275fbbdfd2b69a9ad0a6b70a4bf95c4b5dfc8c23a4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231101.0.21125/kopia-20231101.0.21125-linux-arm64.tar.gz"
    sha256 "044d3b317e45103184467dd246193d5cb316ff3c9c03d1571cb53c0c2f2b0a10"
  end

  def install
    bin.install "kopia"
  end
end
