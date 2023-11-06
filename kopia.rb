# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231105.0.205135"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231105.0.205135/kopia-20231105.0.205135-macOS-x64.tar.gz"
    sha256 "4e6def5867d2f0c81c4387926b0a4f7783648fcd60f107435916ed5a933bac85"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231105.0.205135/kopia-20231105.0.205135-macOS-arm64.tar.gz"
    sha256 "0cf82dff004c49a6e196593f1131303e9d6477952bbbcb03bc0a222b223c5343"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231105.0.205135/kopia-20231105.0.205135-linux-x64.tar.gz"
    sha256 "0a238950f072edf4170ed95a5d8d0cb8e542f66d1def40ebf3b49aa46690dce3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231105.0.205135/kopia-20231105.0.205135-linux-arm.tar.gz"
    sha256 "4fd0e0127491a12f8ac6a3337e2bdffeed268457688b197b619e4709aca6eda3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231105.0.205135/kopia-20231105.0.205135-linux-arm64.tar.gz"
    sha256 "2360b32b0285e861d8334d9b1c948a332b1aea43bea3c21e381c5a38463e77d3"
  end

  def install
    bin.install "kopia"
  end
end
