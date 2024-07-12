# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240711.0.192906"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.192906/kopia-20240711.0.192906-macOS-x64.tar.gz"
    sha256 "6003d05434da5877e73b7387a7dda63ad9fb59ec8e1caea6c54b1cc4abd6ed93"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.192906/kopia-20240711.0.192906-macOS-arm64.tar.gz"
    sha256 "6d8e5e01beca75972d3b86c49376c74210cadfdfb9e70c03fe3b38da965c5cf3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.192906/kopia-20240711.0.192906-linux-x64.tar.gz"
    sha256 "7ce2be1935012665e6e65a6b8c588fb662353f94376e511bb00904f4810432b7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.192906/kopia-20240711.0.192906-linux-arm.tar.gz"
    sha256 "63c073b43b197c229e11426f01070c31c4845639d46e6ce3ccba0770066579ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240711.0.192906/kopia-20240711.0.192906-linux-arm64.tar.gz"
    sha256 "927afd22bf6a55d3e242584964312b9412f9baa4223abebd550fb0c65ff6e64c"
  end

  def install
    bin.install "kopia"
  end
end
