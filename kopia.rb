# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250605.0.30705"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.30705/kopia-20250605.0.30705-macOS-x64.tar.gz"
    sha256 "2e05196502cb04cc1997e5ad1d37edeb6a2ec2cadb12874f87eb7e7fff7ab807"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.30705/kopia-20250605.0.30705-macOS-arm64.tar.gz"
    sha256 "1f1879c65645b23b38bbd9db7df79e50c27c68cb795834d3af7c56446197d233"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.30705/kopia-20250605.0.30705-linux-x64.tar.gz"
    sha256 "d931bf72a8dbdd8aae30b0ba5d87a3a321401a3f671c53b8314c6fb7b62c8e0f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.30705/kopia-20250605.0.30705-linux-arm.tar.gz"
    sha256 "85c30ab3a4347b0307da1712d3edfb2b336c4a3566d9b8182efb2017b5f560fa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.30705/kopia-20250605.0.30705-linux-arm64.tar.gz"
    sha256 "9a69913d67cc6168160f7ad54862a85958d90c1da18c7e117ace27379af02ff5"
  end

  def install
    bin.install "kopia"
  end
end
