# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250521.0.53354"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250521.0.53354/kopia-20250521.0.53354-macOS-x64.tar.gz"
    sha256 "dfc85977a5ebbd55531f365e3d17586665cb0ff0fd670d850cad0c3564225e41"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250521.0.53354/kopia-20250521.0.53354-macOS-arm64.tar.gz"
    sha256 "01f349c2ee1d296b0151a05be9a22f463954c6e5f02d750b4a35af68807d81be"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250521.0.53354/kopia-20250521.0.53354-linux-x64.tar.gz"
    sha256 "d65635aac241ae979125465db6e6fd7bca8a1f9c46ec6e7938c1e639927de213"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250521.0.53354/kopia-20250521.0.53354-linux-arm.tar.gz"
    sha256 "d41e870ab49c3637e1a0ef24515de249eee336d9506508e94ad2dca8b37e3ab4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250521.0.53354/kopia-20250521.0.53354-linux-arm64.tar.gz"
    sha256 "22ee44f360d5760a9fa7791e9d26799043eeab4f4c4cddfcb8855b021fdf271c"
  end

  def install
    bin.install "kopia"
  end
end
