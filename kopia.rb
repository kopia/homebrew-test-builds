# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.75641"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75641/kopia-20211103.0.75641-macOS-x64.tar.gz"
    sha256 "f1137bae5900b4d0da1a5499360cffc8d641025b67b0d11732a38d6112800e88"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75641/kopia-20211103.0.75641-macOS-arm64.tar.gz"
    sha256 "8a8134cd8a69e55fc71377c915f2358159541e2a1659e3e5fddc76f83fa6122a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75641/kopia-20211103.0.75641-linux-x64.tar.gz"
    sha256 "e32bd9ca928266a6442703ef2fd986c624fe0620076331db8d0506e5d70c48cc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75641/kopia-20211103.0.75641-linux-arm.tar.gz"
    sha256 "4cb47f39c772f321c12c14da206ae55a975213ddf5f0dd48bc0e553a8c105640"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75641/kopia-20211103.0.75641-linux-arm64.tar.gz"
    sha256 "39dfe31cec1db2482687a7aadfc1d381616340da00a1f3e192ccfa2fd737a7ec"
  end

  def install
    bin.install "kopia"
  end
end
