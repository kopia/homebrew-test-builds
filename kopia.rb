# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221229.0.195247"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221229.0.195247/kopia-20221229.0.195247-macOS-x64.tar.gz"
    sha256 "4f56928a23ea3ceb331bf287a7051f81f5167dc5f7ffbc77d052b854ba5cfa80"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221229.0.195247/kopia-20221229.0.195247-macOS-arm64.tar.gz"
    sha256 "5c62c7af11657d77bf77f2625148bb4988d8576d77cff20203cb903a6848ac15"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221229.0.195247/kopia-20221229.0.195247-linux-x64.tar.gz"
    sha256 "272f6947b50d1de5e6670a8626f15548c29f1a46c706d78988a653fe77faaee1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221229.0.195247/kopia-20221229.0.195247-linux-arm.tar.gz"
    sha256 "a43ad960b528142021b2434ab6c94bf57bd4b7a1e05da5823095f34450d63e05"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221229.0.195247/kopia-20221229.0.195247-linux-arm64.tar.gz"
    sha256 "b24f89f0172f9b7f81f7413f909899f5964e78337e481e18384cf690524a18d6"
  end

  def install
    bin.install "kopia"
  end
end
