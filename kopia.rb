# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251119.0.14723"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.14723/kopia-20251119.0.14723-macOS-x64.tar.gz"
    sha256 "62409ac0539a3df99ab3d00e5279a60a77e965fe71f2910868311c02d73c9269"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.14723/kopia-20251119.0.14723-macOS-arm64.tar.gz"
    sha256 "db0e4f1e72d2d5dbb42d2084d5bcba60ed8e0c49f329c47428cb817294a4ebdf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.14723/kopia-20251119.0.14723-linux-x64.tar.gz"
    sha256 "3b4b52638b4bdcf888bff0fc5f098bad0416a1bd77eccca9ddd8ff5457e41146"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.14723/kopia-20251119.0.14723-linux-arm.tar.gz"
    sha256 "cd6562427e1b1aaf76111c0cf468d6441195464c00a52c0d0ef1a5edd116fe94"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.14723/kopia-20251119.0.14723-linux-arm64.tar.gz"
    sha256 "b83f1284af4d0c88c9a84291b8526163511804fabcad9f5a119e1b92be50a28f"
  end

  def install
    bin.install "kopia"
  end
end
