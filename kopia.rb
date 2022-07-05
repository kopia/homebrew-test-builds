# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220704.0.225820"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.225820/kopia-20220704.0.225820-macOS-x64.tar.gz"
    sha256 "6b88aa306e9b34ad006271b7f168659efe79d9457318741b41e7bcb95fb43f4b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.225820/kopia-20220704.0.225820-macOS-arm64.tar.gz"
    sha256 "651a5fba4bd39c0485f4e3e2259e6022cf815d9b1ba706758e56dbcd3201adc6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.225820/kopia-20220704.0.225820-linux-x64.tar.gz"
    sha256 "20aed4687fd67a9e6d857819e70bf9c75317b0d7122f824f82467cc2366e384e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.225820/kopia-20220704.0.225820-linux-arm.tar.gz"
    sha256 "9c4f54fc81007ba65b65d57b0c4672851a0c90abb279eb863b7c852146cabbfa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.225820/kopia-20220704.0.225820-linux-arm64.tar.gz"
    sha256 "c6a068d68b4b8b1ef9cfb107764d04ea37fa855b7ac482c3d941ea8b76a82ed3"
  end

  def install
    bin.install "kopia"
  end
end
