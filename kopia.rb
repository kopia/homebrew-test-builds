# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250213.0.201322"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250213.0.201322/kopia-20250213.0.201322-macOS-x64.tar.gz"
    sha256 "a47e926121806c0f08f49b9a451fc23d4efeb0c20cd3cec3ead49d3f4828741c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250213.0.201322/kopia-20250213.0.201322-macOS-arm64.tar.gz"
    sha256 "fd98a93e950c53345bd4ca96d9a3b4d1c089200c60576562fc88fcb88181cd95"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250213.0.201322/kopia-20250213.0.201322-linux-x64.tar.gz"
    sha256 "a23b90e9df7e4f9a35087eae2edd830416ea3e8dcce55a9a27d90eeac7b6ff0a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250213.0.201322/kopia-20250213.0.201322-linux-arm.tar.gz"
    sha256 "b1b18caf2e1882f378639cff22218948ef9077ce44c1c0102611650452201f3a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250213.0.201322/kopia-20250213.0.201322-linux-arm64.tar.gz"
    sha256 "7f7d13d5b1cbb2d0c49151391cc5271eafa008e10f3539f30d7ae949cefe3144"
  end

  def install
    bin.install "kopia"
  end
end
