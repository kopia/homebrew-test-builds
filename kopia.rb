# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220614.0.65335"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.65335/kopia-20220614.0.65335-macOS-x64.tar.gz"
    sha256 "6056d59359d1d35068b191c0e9eb2f177a38edd903dae12a97c753381d2c7686"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.65335/kopia-20220614.0.65335-macOS-arm64.tar.gz"
    sha256 "2c1c315c6d27fad591fe1588ae17d06ad53dae52e12810672decd1f494f4c250"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.65335/kopia-20220614.0.65335-linux-x64.tar.gz"
    sha256 "050b0a1f1b3a8bb6ff7a77a4658f128a487ccdbcfbac0387961c51f5f8f20d92"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.65335/kopia-20220614.0.65335-linux-arm.tar.gz"
    sha256 "1ca8184b048c0186fa1c9c2b9b5db784a4b4bf2245c463e403ee3da5e0bf6787"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.65335/kopia-20220614.0.65335-linux-arm64.tar.gz"
    sha256 "3aafe9ef496f30916ca09d4cb064164eea7976edfeb963416bc7fa5848b90e3a"
  end

  def install
    bin.install "kopia"
  end
end
