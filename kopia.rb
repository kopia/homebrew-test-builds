# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250601.0.183702"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.183702/kopia-20250601.0.183702-macOS-x64.tar.gz"
    sha256 "79043bfe90c71be504aab6092471443f3c57a6c46257fbf56377e809a7694277"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.183702/kopia-20250601.0.183702-macOS-arm64.tar.gz"
    sha256 "0667303f516d3024c43d110487a9fb4f96d289774990eb9660be3596a9327bb3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.183702/kopia-20250601.0.183702-linux-x64.tar.gz"
    sha256 "83d513d0d2837987fe1856d5600b24d908141a1df1741e6fc151cf0e9985ddde"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.183702/kopia-20250601.0.183702-linux-arm.tar.gz"
    sha256 "5689bed883644c70461450cadfea4ba010e76f9b3ba85fb094a8ebbde022e4b9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.183702/kopia-20250601.0.183702-linux-arm64.tar.gz"
    sha256 "fbd0be4202eb60678a7fee40c343be767c5536710571d859f2818aa2377c6810"
  end

  def install
    bin.install "kopia"
  end
end
