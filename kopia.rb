# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251023.0.20110"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.20110/kopia-20251023.0.20110-macOS-x64.tar.gz"
    sha256 "59ecb74fc2da0850123008d180a79d665b6ea1ff7c5d0841818cfa34d94b7198"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.20110/kopia-20251023.0.20110-macOS-arm64.tar.gz"
    sha256 "f0c10497f6547e88102f9a42f14bf0b0cc5f60450e9c9ad4c3ada1b3ca1686d6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.20110/kopia-20251023.0.20110-linux-x64.tar.gz"
    sha256 "825f2c59afd78ff98ba00d8697f567f4b9da98ea963f6c1a906964b22f59136c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.20110/kopia-20251023.0.20110-linux-arm.tar.gz"
    sha256 "5d93108fc2cc2643c503d24369b643e2dd7c1d618739d1f993d6fd419facabf8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251023.0.20110/kopia-20251023.0.20110-linux-arm64.tar.gz"
    sha256 "a7993bade4c8849710c5bc7fbbf8482e66803e0b47686dbffe257b5fa97a4c07"
  end

  def install
    bin.install "kopia"
  end
end
