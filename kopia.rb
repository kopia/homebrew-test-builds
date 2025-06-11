# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250611.0.45810"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.45810/kopia-20250611.0.45810-macOS-x64.tar.gz"
    sha256 "8b40071ca1d8fae64749241c2a9d1f213a56bd2b933806d272362f330060bd10"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.45810/kopia-20250611.0.45810-macOS-arm64.tar.gz"
    sha256 "f3a8f20d2c6c437d3f92f8c982955340e8c70d31791973db52ba9b8a53562ea2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.45810/kopia-20250611.0.45810-linux-x64.tar.gz"
    sha256 "36aa75c04841e30bc9b839e000ac90534466cc38f416a1a645da49737f8c37c8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.45810/kopia-20250611.0.45810-linux-arm.tar.gz"
    sha256 "7bb4f95e0d2f02409ca9b1f198cab8afe12eedaf5466c7ab7b416e2d2906961f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.45810/kopia-20250611.0.45810-linux-arm64.tar.gz"
    sha256 "ff06012891a3a00b779a39ae0fb420ce4cf24e3bbfd03c1ab639ed2ab1e34366"
  end

  def install
    bin.install "kopia"
  end
end
