# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220103.0.184838"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.184838/kopia-20220103.0.184838-macOS-x64.tar.gz"
    sha256 "30ca2b595999494477a177d0da4d373549848c25e4be397172ccb441649ab977"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.184838/kopia-20220103.0.184838-macOS-arm64.tar.gz"
    sha256 "cc1ac2e4b9b8a96a660ed53f7f7117159bc585caf8b5ae69b05b31886b3aaa54"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.184838/kopia-20220103.0.184838-linux-x64.tar.gz"
    sha256 "22c7ff2606e91e85ace2294946e8a472529395f9afdbda3d7abd5c2cac8b8c3f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.184838/kopia-20220103.0.184838-linux-arm.tar.gz"
    sha256 "6bc0a3cfad8509b7824f805b2021d7fa7957125966cb47f67fd3918f3bb36365"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.184838/kopia-20220103.0.184838-linux-arm64.tar.gz"
    sha256 "c0a9b58b33a5facd58a6001dfb2897826be88b3cf5682e2993fa72bd17f5468e"
  end

  def install
    bin.install "kopia"
  end
end
