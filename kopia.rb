# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220528.0.74459"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.74459/kopia-20220528.0.74459-macOS-x64.tar.gz"
    sha256 "dc04ff84575e27c8febde27ef070dcb5bfbaad7a925143649001ca2ba31c1c2b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.74459/kopia-20220528.0.74459-macOS-arm64.tar.gz"
    sha256 "32b0a261a39b088caf35eb337afe0f8ec740ea75f8d64538f21b10e1b8e04161"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.74459/kopia-20220528.0.74459-linux-x64.tar.gz"
    sha256 "574b6c687a9ca6784c082c3b0719e55b8e7f5cd37bd08d3a3736158bfee0b774"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.74459/kopia-20220528.0.74459-linux-arm.tar.gz"
    sha256 "90fd2dce14d63e233dece596b45e5ccd9f3e5cd83e34e0d81b7e0e4738c5621e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.74459/kopia-20220528.0.74459-linux-arm64.tar.gz"
    sha256 "5b69a4f6b37120f46bad903268e04acd140c74641389800cd8bda7fb24b76945"
  end

  def install
    bin.install "kopia"
  end
end
