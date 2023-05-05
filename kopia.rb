# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230505.0.144824"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230505.0.144824/kopia-20230505.0.144824-macOS-x64.tar.gz"
    sha256 "9296007c06b8632317c6f7d48f673be63fa650bd43c634762c504036de499c91"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230505.0.144824/kopia-20230505.0.144824-macOS-arm64.tar.gz"
    sha256 "39aa4ea65a25cbce24ac5209bf51174ee9e47cba2030453956ad320981caa06f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230505.0.144824/kopia-20230505.0.144824-linux-x64.tar.gz"
    sha256 "b718d1c413ff9ef99e5f9cf3853b1c8e9879359120a8f55591babe7ce840c168"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230505.0.144824/kopia-20230505.0.144824-linux-arm.tar.gz"
    sha256 "27cb8d8fc9349afd9a02171da667305cf0be7a4cb212caa486159d40d9e7f39c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230505.0.144824/kopia-20230505.0.144824-linux-arm64.tar.gz"
    sha256 "1938e316f82ef94a84b52c3a1d3eace8709177425c975f563a02982b9e304779"
  end

  def install
    bin.install "kopia"
  end
end
