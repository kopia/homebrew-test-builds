# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220911.0.74334"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.74334/kopia-20220911.0.74334-macOS-x64.tar.gz"
    sha256 "d6b1e8b4a0ee1d63e2c4c210b7bbf1ce47ba549160de05b1c4319901b3dfc478"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.74334/kopia-20220911.0.74334-macOS-arm64.tar.gz"
    sha256 "1ea2c6518e2647afd6b108c5da8fb190d0764a9ef485639d5bbcf24a0060aab6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.74334/kopia-20220911.0.74334-linux-x64.tar.gz"
    sha256 "c3cd5480d4cf3d30e89594cfd36c5699d219bbc3cdbf981ae35672d86592b73c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.74334/kopia-20220911.0.74334-linux-arm.tar.gz"
    sha256 "bebf038a6524759ee5d3df66ba4f3f51d3acc9e0aa21b5b70b1986a2896399ed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.74334/kopia-20220911.0.74334-linux-arm64.tar.gz"
    sha256 "bccddcd9897cd082a507735abab690a0f55a6927852a2e27620b748e53c2c7e6"
  end

  def install
    bin.install "kopia"
  end
end
