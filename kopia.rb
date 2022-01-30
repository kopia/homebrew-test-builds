# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220129.0.155333"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.155333/kopia-20220129.0.155333-macOS-x64.tar.gz"
    sha256 "7cf557c5607b7fc6b600fdd07df30f8f8cb5e3412ef91d77e170de247e7c810e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.155333/kopia-20220129.0.155333-macOS-arm64.tar.gz"
    sha256 "0b9774e26862af728e4fde9d0a408a6727c2442b6d09f8d5daead7f6f6926c71"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.155333/kopia-20220129.0.155333-linux-x64.tar.gz"
    sha256 "e2aab45c0bfbda3f3be83cc975ceb57a710889b9903682f635cfbbc609a6d8a6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.155333/kopia-20220129.0.155333-linux-arm.tar.gz"
    sha256 "3224fc883ccf6bc2964545fb36af41757fab631ffc30d618078c7e4330f9c1df"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.155333/kopia-20220129.0.155333-linux-arm64.tar.gz"
    sha256 "003c8d325e532e67d78376eb077d6d72310bb277a9d2afd71af2a14b78201c0f"
  end

  def install
    bin.install "kopia"
  end
end
