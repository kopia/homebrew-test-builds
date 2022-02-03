# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.184448"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.184448/kopia-20220202.0.184448-macOS-x64.tar.gz"
    sha256 "4599ef9094d73b95c2b4fa2eb5be3fe505907796a39f03cd5a5c5d163dbf04d8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.184448/kopia-20220202.0.184448-macOS-arm64.tar.gz"
    sha256 "fe5b8a2d2ca669c4b7ac2454cb8eaed4e0df14911b3840d9d98b4a0e0b71d8ea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.184448/kopia-20220202.0.184448-linux-x64.tar.gz"
    sha256 "c910c213cad345913c88d47a03be88b03f631ffba59bab8882cc05e42bc865c9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.184448/kopia-20220202.0.184448-linux-arm.tar.gz"
    sha256 "2828fdae79df8d17797f00d58045a1a8da5604a9c9a89257bbe2c12aa8e20d19"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.184448/kopia-20220202.0.184448-linux-arm64.tar.gz"
    sha256 "e51e0c46d1af3ae7b3e74c49e2c34ee15498f5c310e6d2cf7278f423874c95c9"
  end

  def install
    bin.install "kopia"
  end
end
