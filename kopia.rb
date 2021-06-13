# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210612.0.192225"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210612.0.192225/kopia-20210612.0.192225-macOS-x64.tar.gz"
    sha256 "b29740a1caea3c0a8e25653f7daa84931d7525dd5df606a9760b54684394e9fa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210612.0.192225/kopia-20210612.0.192225-macOS-arm64.tar.gz"
    sha256 "ed65f268bf6cb2c6de6b264cfb53ab19f14fe69c1606000f9eace0d5d2cd17a5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210612.0.192225/kopia-20210612.0.192225-linux-x64.tar.gz"
    sha256 "18af1e78655d2a09c1d0a6586143fb97324f7dd908cb9be543315fac98f05f5d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210612.0.192225/kopia-20210612.0.192225-linux-arm.tar.gz"
    sha256 "6f2003d847c4b2bb78d78f2a61d63b762fa57181aaf658b69690be98b8f3cb53"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210612.0.192225/kopia-20210612.0.192225-linux-arm64.tar.gz"
    sha256 "0acf4107b5228b08da50afbced57a6f0a3f34e1ce061910eaf0a9e3c48917579"
  end

  def install
    bin.install "kopia"
  end
end
