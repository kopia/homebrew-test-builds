# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251114.0.55856"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.55856/kopia-20251114.0.55856-macOS-x64.tar.gz"
    sha256 "d63c125cf5878aaf61b147af1d8cf65aa075e173ba31f965ba6692d25a0e7566"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.55856/kopia-20251114.0.55856-macOS-arm64.tar.gz"
    sha256 "96df518a7eb60e4519c9e5d0b90dad827d3af4c67d584f66cac4ba7c33b9928e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.55856/kopia-20251114.0.55856-linux-x64.tar.gz"
    sha256 "7256abac3e4abb4139e70ce4132a2899828ed87bf881db243c14b910e9e49ea6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.55856/kopia-20251114.0.55856-linux-arm.tar.gz"
    sha256 "3b93e5a31bbc601a2dfeaeb9f59efc08d1b3e8a0eb6000d0dc3d2d8dcd8ab309"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.55856/kopia-20251114.0.55856-linux-arm64.tar.gz"
    sha256 "fc79d3c8c76c807bf20af6a284fe076a05c11268f6074552fb8b4482d2008a76"
  end

  def install
    bin.install "kopia"
  end
end
