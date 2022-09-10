# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220910.0.184603"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.184603/kopia-20220910.0.184603-macOS-x64.tar.gz"
    sha256 "2f0adecd5e28981c026da30b26daaa26817998317e8cdf091dc802e0aa674250"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.184603/kopia-20220910.0.184603-macOS-arm64.tar.gz"
    sha256 "119c508b3f04b3246d83be03d510f3dbecc0841f2a307ecb9786462f7cc4f2e3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.184603/kopia-20220910.0.184603-linux-x64.tar.gz"
    sha256 "6949e742301f9cd84cef8df90bdb8958e7e15b60d3d4d500fe3e93541621f290"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.184603/kopia-20220910.0.184603-linux-arm.tar.gz"
    sha256 "89acc6b32be9c2c4382f19b6255885d0d669acce3aa2ce5f3698191ac3c7a315"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.184603/kopia-20220910.0.184603-linux-arm64.tar.gz"
    sha256 "bf5f64fd099c9475f0b0a2dca8c46a32d127740a86f51efa6fc62c5a64a47168"
  end

  def install
    bin.install "kopia"
  end
end
