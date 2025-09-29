# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250929.0.65927"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250929.0.65927/kopia-20250929.0.65927-macOS-x64.tar.gz"
    sha256 "0ec8a365b38a8fe1d94054796ef44525cc6808df7a813e42d97a82103856906b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250929.0.65927/kopia-20250929.0.65927-macOS-arm64.tar.gz"
    sha256 "065b0dc4df89dcef84bc10a12d337db9ded90658caa4176ea68a3e9b9c26442d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250929.0.65927/kopia-20250929.0.65927-linux-x64.tar.gz"
    sha256 "a8f81fb28ae1f74ad600b600d6e75e117089b54ce35df24b4de9095ccda56c7d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250929.0.65927/kopia-20250929.0.65927-linux-arm.tar.gz"
    sha256 "08f85868c698df24c54ecfc415aaf964281c71fb8fd38d9e1325d53b9e5c66ba"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250929.0.65927/kopia-20250929.0.65927-linux-arm64.tar.gz"
    sha256 "37035ce90c0722568b491663c4ddb8c1af884acc8cd465bb2295f9da0efa6bd1"
  end

  def install
    bin.install "kopia"
  end
end
