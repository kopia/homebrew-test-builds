# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250429.0.40355"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250429.0.40355/kopia-20250429.0.40355-macOS-x64.tar.gz"
    sha256 "3df6599f46bf428e31403e37f961cf9ce23fb326c51add04066b62c38a53dd2f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250429.0.40355/kopia-20250429.0.40355-macOS-arm64.tar.gz"
    sha256 "f9feb4af60ef3baa1536fe0c42b0e69c82b42047c6f7498a0c06ab21bbbf8ebc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250429.0.40355/kopia-20250429.0.40355-linux-x64.tar.gz"
    sha256 "526ede77e633771f52c75cff376f5e70cf2264e03e4f3e6bac7f65045355d3c7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250429.0.40355/kopia-20250429.0.40355-linux-arm.tar.gz"
    sha256 "9aebc4104b6e312de041f56e509c6681e06fb5fac0ee55dd1762f91ddbc7ff4d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250429.0.40355/kopia-20250429.0.40355-linux-arm64.tar.gz"
    sha256 "6fa299a219e05713d398859d3c9988439fb6e0f881a442c731cc556e5c10c103"
  end

  def install
    bin.install "kopia"
  end
end
