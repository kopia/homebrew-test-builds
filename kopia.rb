# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250821.0.4900"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250821.0.4900/kopia-20250821.0.4900-macOS-x64.tar.gz"
    sha256 "0c25e98a6ba4987932337fe090019bb1039afe1c37fcb44aafc3d448de9734ae"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250821.0.4900/kopia-20250821.0.4900-macOS-arm64.tar.gz"
    sha256 "102d488b997ee9f21aa423e7a9c8e7c70ac2019d982c498aa60fe222ad336071"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250821.0.4900/kopia-20250821.0.4900-linux-x64.tar.gz"
    sha256 "fd71e3a199d50a6e2f87729d12a291f78177c0431468a65b43def81fd6f367c7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250821.0.4900/kopia-20250821.0.4900-linux-arm.tar.gz"
    sha256 "131cd8045a61c3cca359600ab5c2391d621d42481c0fae2c4a5ee5be36141de3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250821.0.4900/kopia-20250821.0.4900-linux-arm64.tar.gz"
    sha256 "9f10a0e2022b45e120f9ef7d3af0539354395448b44cb4b90c89569870728047"
  end

  def install
    bin.install "kopia"
  end
end
