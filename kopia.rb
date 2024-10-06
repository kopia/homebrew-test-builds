# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241006.0.162839"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.162839/kopia-20241006.0.162839-macOS-x64.tar.gz"
    sha256 "61cf1b7c2281fc1a64b58392d66a09b993afeb90df0bd62970b3d4a84feea07d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.162839/kopia-20241006.0.162839-macOS-arm64.tar.gz"
    sha256 "a0e65628714bd4217655d9427822b43ede87a90622220ce5418361eeb1f54f68"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.162839/kopia-20241006.0.162839-linux-x64.tar.gz"
    sha256 "0258e832c9d79058aded1f4290895db31bbc4e8312edc45b76bd0d82014bed7f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.162839/kopia-20241006.0.162839-linux-arm.tar.gz"
    sha256 "5fe40136f910ac569d3b1e745aa886c3b0085a9ab2b67297d0a0be8459d2a173"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.162839/kopia-20241006.0.162839-linux-arm64.tar.gz"
    sha256 "28c80d4326e0be67706469443b36e96afc2147b7b040b5f2d48b5db898eb3724"
  end

  def install
    bin.install "kopia"
  end
end
