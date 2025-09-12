# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250912.0.13554"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250912.0.13554/kopia-20250912.0.13554-macOS-x64.tar.gz"
    sha256 "265b4e77caff2f4cfdb6ab3e6593019d55bba6798756a24520f34a9e92e6135d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250912.0.13554/kopia-20250912.0.13554-macOS-arm64.tar.gz"
    sha256 "fee53fe359aeed660263fc428f3c2bf85c990ffe89b72867a5409939cba2229a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250912.0.13554/kopia-20250912.0.13554-linux-x64.tar.gz"
    sha256 "7088da473f09e524310e329f4008f56f80cf7164c5e4fe53a23b9d87a5e69a8d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250912.0.13554/kopia-20250912.0.13554-linux-arm.tar.gz"
    sha256 "63239bd0405dc817bdb3509c1b0b4f0af38e8299106ff306d3d21536c8f7d7dd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250912.0.13554/kopia-20250912.0.13554-linux-arm64.tar.gz"
    sha256 "82dadfb100a752cf7caba75c841c4631f2fac151d96da335e669a968fa10748e"
  end

  def install
    bin.install "kopia"
  end
end
