# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261013.0.193142"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261013.0.193142/kopia-20261013.0.193142-macOS-x64.tar.gz"
    sha256 "af929ce96fbb13927462619dda1d8828ab5edbfa383506fce8126428c802985e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261013.0.193142/kopia-20261013.0.193142-macOS-arm64.tar.gz"
    sha256 "89218cc798c8fbba302ed1a6ce3197c7742d23ce7a805a2899caa75049df2997"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261013.0.193142/kopia-20261013.0.193142-linux-x64.tar.gz"
    sha256 "d67fba55eac6ddf44f1d390e129a5316e0a0ac99e3dfc39edf725725b21c1647"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261013.0.193142/kopia-20261013.0.193142-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261013.0.193142/kopia-20261013.0.193142-linux-arm64.tar.gz"
    sha256 "e26bc928d53bb488247ccb7acef37e62dfe76a340720165e0317cec783e68c85"
  end

  def install
    bin.install "kopia"
  end
end
