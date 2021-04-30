# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210430.0.61619"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210430.0.61619/kopia-20210430.0.61619-macOS-x64.tar.gz"
    sha256 "23ec39b03a8bfdba627e36571926ff99f1313b27d9b45eebc12d8950f9a5898e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210430.0.61619/kopia-20210430.0.61619-macOS-arm64.tar.gz"
    sha256 "5f19ade074484882e0d12f1361d01bd5b0353c40affb4fc0675b29be47b808c8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210430.0.61619/kopia-20210430.0.61619-linux-x64.tar.gz"
    sha256 "b0adbda2dcd681d4a3a348dfc1d54d68965d48e0d82b1ba6829edf63b666c59f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210430.0.61619/kopia-20210430.0.61619-linux-arm.tar.gz"
    sha256 "73265e2b3bdcc489a1d392167b545a460ec350cac00e6345c158b4a2acfaaf76"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210430.0.61619/kopia-20210430.0.61619-linux-arm64.tar.gz"
    sha256 "1bb4e03ab75d5a82b8e7cd031010130cec38863c943f50f9ef9ef57ed034c004"
  end

  def install
    bin.install "kopia"
  end
end
