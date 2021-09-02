# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210901.0.170137"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.170137/kopia-20210901.0.170137-macOS-x64.tar.gz"
    sha256 "84dd1a70a68672c6f57a4a474c89c954114cb81af316dc12b98cd4016ac4fa16"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.170137/kopia-20210901.0.170137-macOS-arm64.tar.gz"
    sha256 "aac2e09bc46abbf7c74b7b7530e68f75dc2df1ea85640fd80f7b0cad8ac0e51f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.170137/kopia-20210901.0.170137-linux-x64.tar.gz"
    sha256 "a762401ac910aeb8e4cbafe0b968c346ca4616da089fdf13c4e9414915cac522"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.170137/kopia-20210901.0.170137-linux-arm.tar.gz"
    sha256 "d6e80c324438a6200f478f11292721ae820b3bcac4daa91944bb3565a6bd5b13"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.170137/kopia-20210901.0.170137-linux-arm64.tar.gz"
    sha256 "52f7c3f1bf6b9a919a6696b2bce8e266431f2b322ee5074ccc02f73e77966f7e"
  end

  def install
    bin.install "kopia"
  end
end
