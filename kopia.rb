# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220607.0.205602"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220607.0.205602/kopia-20220607.0.205602-macOS-x64.tar.gz"
    sha256 "d993882d2d65581da271f353b0fdae4a16ffa8f00c7578d4e9baa2b832e99182"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220607.0.205602/kopia-20220607.0.205602-macOS-arm64.tar.gz"
    sha256 "dc84c18917180a9e6bdeb2d4529550bf220dba8b9b1b1b796ab87ef63320105f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220607.0.205602/kopia-20220607.0.205602-linux-x64.tar.gz"
    sha256 "ee1d51d40c05b14a4b3adf17fed5b2468e8577838eec9ed56a199cc5bee33c6a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220607.0.205602/kopia-20220607.0.205602-linux-arm.tar.gz"
    sha256 "e1b844296150efe9aa5dd44406f862aa52d79a52a90644a08297ffab25985f14"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220607.0.205602/kopia-20220607.0.205602-linux-arm64.tar.gz"
    sha256 "bebbd8624c2d97ec322a3234d86876de2cd6ae14b452b77c13920bb3f8587d71"
  end

  def install
    bin.install "kopia"
  end
end
