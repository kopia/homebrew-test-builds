# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251023.0.11410"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.11410/kopia-20251023.0.11410-macOS-x64.tar.gz"
    sha256 "8ec798fe24f3ae34d22e204474f22a6fe1b4e5f4eb48e8c2a3312e0ac7517f99"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.11410/kopia-20251023.0.11410-macOS-arm64.tar.gz"
    sha256 "4111c0f451cb098343c349fe9abe4a019a0e7a1c3fafea480551d82aa6192ff3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.11410/kopia-20251023.0.11410-linux-x64.tar.gz"
    sha256 "4297d2ee7d2d8543e881f4f738bfecbb27eed495335533e61057c7e472e66078"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.11410/kopia-20251023.0.11410-linux-arm.tar.gz"
    sha256 "033dd6d3171e62b0965d3f293a9744b808d7d6e568e6a51a413aa9cb55d0a843"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.11410/kopia-20251023.0.11410-linux-arm64.tar.gz"
    sha256 "83cc08fa758bb2294a61fce94e6324d32cd42937f761cb57a0a674e117c6892c"
  end

  def install
    bin.install "kopia"
  end
end
