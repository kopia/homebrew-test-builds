# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240930.0.204921"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.204921/kopia-20240930.0.204921-macOS-x64.tar.gz"
    sha256 "92324b446a47a8fe2e9a80618ec948e90a9c552e7c18d282cb6503e7337bf5d1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.204921/kopia-20240930.0.204921-macOS-arm64.tar.gz"
    sha256 "a6cc1b68b4f24cee3f961d2652e8b39d7ba1d6a4bc0f947a7cf437bdb31f0860"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.204921/kopia-20240930.0.204921-linux-x64.tar.gz"
    sha256 "ee7580ef3f6ad35bc5792adcf1b32581f628fbd85f19cda4bf7a293fc54bb920"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.204921/kopia-20240930.0.204921-linux-arm.tar.gz"
    sha256 "2faf327e2ac16353cc4ebcafe094ff76c4bc17324f5650af4ec6b35a281b3697"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.204921/kopia-20240930.0.204921-linux-arm64.tar.gz"
    sha256 "440d84422bfae04782a2c96c1fc73f75fdc66282df3de2902ad4989771d28931"
  end

  def install
    bin.install "kopia"
  end
end
