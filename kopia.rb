# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220904.0.210215"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220904.0.210215/kopia-20220904.0.210215-macOS-x64.tar.gz"
    sha256 "ff374eca8acebae42ecc3de9be3472be375142e738aac801ccaa08274a125261"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220904.0.210215/kopia-20220904.0.210215-macOS-arm64.tar.gz"
    sha256 "8466cc457a99edc4cd0f6add77f405870f0f4b7ac88bab6d7fe251deaadaaeb8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220904.0.210215/kopia-20220904.0.210215-linux-x64.tar.gz"
    sha256 "2c3a70c39a5574729bd6214654d189f48053ce9bdbbb270d97cb087872691504"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220904.0.210215/kopia-20220904.0.210215-linux-arm.tar.gz"
    sha256 "9aa4558c1391b50e6bd413796b2304b552c5c110958b369c74d32f75f395930d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220904.0.210215/kopia-20220904.0.210215-linux-arm64.tar.gz"
    sha256 "a369790a98b558969ef5835ba1bea59c2c9be50b12b7eebe6e3c40c97dfbbe98"
  end

  def install
    bin.install "kopia"
  end
end
