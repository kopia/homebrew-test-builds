# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240228.0.220518"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240228.0.220518/kopia-20240228.0.220518-macOS-x64.tar.gz"
    sha256 "f778de9fb9807e09ea56f21cd1f1524b28e78a928e718efce3d1786ad54a7a33"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240228.0.220518/kopia-20240228.0.220518-macOS-arm64.tar.gz"
    sha256 "bfa3192c3f16cba00da61ac6f1d3410b7648cc2784fea09a017bf325fe898e2f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240228.0.220518/kopia-20240228.0.220518-linux-x64.tar.gz"
    sha256 "5fdd983012271ad2dd6706ea75362713e983db83c0cbc8ea288e8abd907b3665"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240228.0.220518/kopia-20240228.0.220518-linux-arm.tar.gz"
    sha256 "8eb1b6ea8c6e562f129bd18cfab170107d60778091a09a41d24068268c53ed38"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240228.0.220518/kopia-20240228.0.220518-linux-arm64.tar.gz"
    sha256 "c94c06c174fcdf02e068c88f64ad4e90eb388d8e26c2ea6be364224b68f536a1"
  end

  def install
    bin.install "kopia"
  end
end
