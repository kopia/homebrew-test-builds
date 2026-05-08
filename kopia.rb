# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260508.0.214811"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260508.0.214811/kopia-20260508.0.214811-macOS-x64.tar.gz"
    sha256 "b8eda369a94b4466109e84ee0f62f5d6e85d6234aadf91f461b5d23d1a17f42c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260508.0.214811/kopia-20260508.0.214811-macOS-arm64.tar.gz"
    sha256 "df1e65f131fb02eeaeb27686792016dc9e7b1c0db81213b74804ec8cb89b360d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260508.0.214811/kopia-20260508.0.214811-linux-x64.tar.gz"
    sha256 "f607ebcb43366a239f2809bd735a3a383c3cbf539f27f7a5830409785d8eed8b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260508.0.214811/kopia-20260508.0.214811-linux-arm.tar.gz"
    sha256 "c23faccd2dae5fdcef0cc9532e2fd8a6e4bcc4831d2668c29ecc9a9d1496bf6a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260508.0.214811/kopia-20260508.0.214811-linux-arm64.tar.gz"
    sha256 "daf66c35cc1ca2230de3c1e572fa79eba47334dcf9dfb5e3a990f78df5b75384"
  end

  def install
    bin.install "kopia"
  end
end
