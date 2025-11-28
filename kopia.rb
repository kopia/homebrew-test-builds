# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251128.0.62506"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251128.0.62506/kopia-20251128.0.62506-macOS-x64.tar.gz"
    sha256 "d088688e558208348cff33d7536947aa1b36a9f0122e4dcda30ccf7b93bf6e7b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251128.0.62506/kopia-20251128.0.62506-macOS-arm64.tar.gz"
    sha256 "1ff385f4ff015df0e9b943083e5843b72a6c441c764a0654c36c63a6a9e4e6d5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251128.0.62506/kopia-20251128.0.62506-linux-x64.tar.gz"
    sha256 "291de4d1e4af45aec0b88ac6df50ff09b8ae22f2bbbba90e22bbbc01041b36c8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251128.0.62506/kopia-20251128.0.62506-linux-arm.tar.gz"
    sha256 "76944dabcd4c56258b27f170519ff8c1153a64b90c43d1ca9116213abf14b9c5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251128.0.62506/kopia-20251128.0.62506-linux-arm64.tar.gz"
    sha256 "7385055fd896ea1b7774b408b9e82b48eda821f80f6f7abc00caf59fb671ab46"
  end

  def install
    bin.install "kopia"
  end
end
