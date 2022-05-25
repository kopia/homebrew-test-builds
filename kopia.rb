# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220525.0.141556"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.141556/kopia-20220525.0.141556-macOS-x64.tar.gz"
    sha256 "e7b27b6c0cb636a4daad018b94336af618cb01d5eab1d3255aea969c1b26633d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.141556/kopia-20220525.0.141556-macOS-arm64.tar.gz"
    sha256 "dd70fef28e138566399c273d8a15d74399daafb8ea45a1783873b0d5506e4b98"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.141556/kopia-20220525.0.141556-linux-x64.tar.gz"
    sha256 "23ebbfe21505aa40144954bf63be8bf362b64a43815eca8f9849659e807f1f26"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.141556/kopia-20220525.0.141556-linux-arm.tar.gz"
    sha256 "018f74cefca041ff19947c9f8186ba9e5238e128932e0dd3f585d4d4ad13c7ec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.141556/kopia-20220525.0.141556-linux-arm64.tar.gz"
    sha256 "cf4c34ce63456966d3f4698c735b3c4e1568c989d99a9dbfcc1d9a8429fab3b3"
  end

  def install
    bin.install "kopia"
  end
end
