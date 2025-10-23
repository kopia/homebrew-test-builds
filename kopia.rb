# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251023.0.52914"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.52914/kopia-20251023.0.52914-macOS-x64.tar.gz"
    sha256 "decdd8b2991d519d2d137c803d180ffcc5f55dd61edbab637d588ef0126b05f9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.52914/kopia-20251023.0.52914-macOS-arm64.tar.gz"
    sha256 "4d220cc455009d80a4bdac75ee3fb9aecbb2715a66950dca3de088ba15a9cb74"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.52914/kopia-20251023.0.52914-linux-x64.tar.gz"
    sha256 "f54cc07649bb5770be361372464791fb2fbd8ff11deb2639cca105d23c31bc2c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.52914/kopia-20251023.0.52914-linux-arm.tar.gz"
    sha256 "45be859648c69e41ed6ed893d69e6e3f390fd4273c4426ff653d381f59b98050"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.52914/kopia-20251023.0.52914-linux-arm64.tar.gz"
    sha256 "5b7431eb368b80a7a166bce5c5cf6d4d904fb51eae966083eac1f06453ffa1e4"
  end

  def install
    bin.install "kopia"
  end
end
