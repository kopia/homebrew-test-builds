# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260521.0.30428"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260521.0.30428/kopia-20260521.0.30428-macOS-x64.tar.gz"
    sha256 "82c804e5beecfd562403bdac334f7597173a9b0be91543086f273a9946e0b810"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260521.0.30428/kopia-20260521.0.30428-macOS-arm64.tar.gz"
    sha256 "92ab1fc9483c0d681e40a9ff8398e4a5f68cf89514bd76b979ebfd62e9bf349c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260521.0.30428/kopia-20260521.0.30428-linux-x64.tar.gz"
    sha256 "4d62415aa4b9a7a847c5c9f9b4c09cc847d3c77cf4202c18162c5cd768207d4e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260521.0.30428/kopia-20260521.0.30428-linux-arm.tar.gz"
    sha256 "4a1278d0e28e8d435259e6ec16da3616477307bc2642e61b48fcd602af158a6b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260521.0.30428/kopia-20260521.0.30428-linux-arm64.tar.gz"
    sha256 "c9d2ff7bb222f475c3bce91019f3ffe2afafde425d5acec00c18ab5c37950436"
  end

  def install
    bin.install "kopia"
  end
end
