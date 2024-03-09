# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240308.0.234127"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240308.0.234127/kopia-20240308.0.234127-macOS-x64.tar.gz"
    sha256 "8fec6aaf5bb00fc75d3ed1497eef23a43822789fa84d968ab9e53c551a175e60"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240308.0.234127/kopia-20240308.0.234127-macOS-arm64.tar.gz"
    sha256 "6a56a05ae420cb5b2020fff093ae589078c5aab7036a25cd4a686557a2ebe8b4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240308.0.234127/kopia-20240308.0.234127-linux-x64.tar.gz"
    sha256 "c43a794687633e8c3727b3ce9a2f2710c2de671d93beaac0f0425e2769a6ad68"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240308.0.234127/kopia-20240308.0.234127-linux-arm.tar.gz"
    sha256 "51362b47dc0c33019ba5d8b333b95826e46517791f450f2883f604c5250875ce"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240308.0.234127/kopia-20240308.0.234127-linux-arm64.tar.gz"
    sha256 "de16fb04ba5bdb7e38f6611d705878f5345d91211ab998a44c584f1d9fee183f"
  end

  def install
    bin.install "kopia"
  end
end
