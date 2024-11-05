# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241105.0.61843"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241105.0.61843/kopia-20241105.0.61843-macOS-x64.tar.gz"
    sha256 "a292c78ea3444ffb89f319aa41748b78ed0211d82a21f8e7116397f417226ff1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241105.0.61843/kopia-20241105.0.61843-macOS-arm64.tar.gz"
    sha256 "f521528daa0dab0d9c72df28b742ab9099e1202b0e3da29c33ecdcf4ac50222b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241105.0.61843/kopia-20241105.0.61843-linux-x64.tar.gz"
    sha256 "3684129444d865f1a63c97ca21fb4fee94ebfa15b967f0292d46b3473b9fdb71"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241105.0.61843/kopia-20241105.0.61843-linux-arm.tar.gz"
    sha256 "938e5191cac7b3ab3b44184a4501e8cb694d848bfef78325aa7cddc88e571483"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241105.0.61843/kopia-20241105.0.61843-linux-arm64.tar.gz"
    sha256 "c651b107e765ce9f4a6e81e69387ee6418f8b8db9c4fec2a0ba20b8b83999229"
  end

  def install
    bin.install "kopia"
  end
end
