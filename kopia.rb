# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260604.0.53151"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.53151/kopia-20260604.0.53151-macOS-x64.tar.gz"
    sha256 "5d537633546fc7e49c3c37a907e4f0c7f9fa930cecb320197ce498937860faaa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.53151/kopia-20260604.0.53151-macOS-arm64.tar.gz"
    sha256 "9da1435d4f42d6c9c23464b8695513d68d28b4cfe2be8bc93276f21ea222d5b3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.53151/kopia-20260604.0.53151-linux-x64.tar.gz"
    sha256 "946ddf2722b2faccfeceabab3eb12a5076d278f0fca715b972b50944da5730c1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.53151/kopia-20260604.0.53151-linux-arm.tar.gz"
    sha256 "c5fd33325373cdd281b02e4802169203449a3143f43587e41bde8b67249dc756"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.53151/kopia-20260604.0.53151-linux-arm64.tar.gz"
    sha256 "a45c7ab6e669d01a299d37cfc67a02fdf81f7d7604f8d549fe4289d42d8794b7"
  end

  def install
    bin.install "kopia"
  end
end
