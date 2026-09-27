# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260927.0.43109"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.43109/kopia-20260927.0.43109-macOS-x64.tar.gz"
    sha256 "a12bec12bd2d14a88b2d2bbe2b40fd18dca34255a34792655e955fc9934a98ae"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.43109/kopia-20260927.0.43109-macOS-arm64.tar.gz"
    sha256 "216d2d7b65a4cfff440f6c6b357c144f4149df3a431545fb8c86d8fd8418ab50"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.43109/kopia-20260927.0.43109-linux-x64.tar.gz"
    sha256 "a276d498b93e1406752e53b13505b02c403ed9a536f656c01d2a3513b743f160"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.43109/kopia-20260927.0.43109-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.43109/kopia-20260927.0.43109-linux-arm64.tar.gz"
    sha256 "1dff808c1d7e1091b9b811450d4c8913e1515dddcb0939b6982dc6886088d84e"
  end

  def install
    bin.install "kopia"
  end
end
