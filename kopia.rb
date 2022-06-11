# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220611.0.141757"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.141757/kopia-20220611.0.141757-macOS-x64.tar.gz"
    sha256 "b4b34e51c59b3505e0354a5cbe49d95bc8b7d9f3e1076d922100dc73fa69afb0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.141757/kopia-20220611.0.141757-macOS-arm64.tar.gz"
    sha256 "0fa7816606dc5a5132e9b0bae2187b198d3d765f9f2fde4a0c866c176b46cc6f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.141757/kopia-20220611.0.141757-linux-x64.tar.gz"
    sha256 "ca6246e31a94f647807f9fc07c1960ed9a1d20a521c429a85409507fff6ccc9d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.141757/kopia-20220611.0.141757-linux-arm.tar.gz"
    sha256 "3b6ece0a126b661bd00a0db4534350661a7511f3713d51bbfa474d025769966e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220611.0.141757/kopia-20220611.0.141757-linux-arm64.tar.gz"
    sha256 "e9ffe6bae03ba23305e40b3c5c29f11f803ddd9f09e35ad8e69b2f9f1c5a6bd2"
  end

  def install
    bin.install "kopia"
  end
end
