# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240424.0.140719"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240424.0.140719/kopia-20240424.0.140719-macOS-x64.tar.gz"
    sha256 "6eb9bcecc576858a382a754986b77eaad034afb6c126ab22744b5ceb3403328d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240424.0.140719/kopia-20240424.0.140719-macOS-arm64.tar.gz"
    sha256 "3f3515e5e0cb2cdaf90253f2048c5607296ada0a4bdcb2d67b0805d53b553aab"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240424.0.140719/kopia-20240424.0.140719-linux-x64.tar.gz"
    sha256 "a6790ab36f59f27293d3f8357d89498fe20a40e79410a68665f9649bf69d164b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240424.0.140719/kopia-20240424.0.140719-linux-arm.tar.gz"
    sha256 "ac0089aa1d201a5793b9fcea83e2d06cfdb8b283f4de0ae3519403cfd4a9bb17"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240424.0.140719/kopia-20240424.0.140719-linux-arm64.tar.gz"
    sha256 "2316ecec1908227dd80d13fbf5edaa97b0af8fcf13364a0cc0675eda3c81e61b"
  end

  def install
    bin.install "kopia"
  end
end
