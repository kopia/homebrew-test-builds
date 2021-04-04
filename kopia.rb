# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210403.0.223139"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.223139/kopia-20210403.0.223139-macOS-x64.tar.gz"
    sha256 "6dcc1f53bcdaa82fd4365fc0dc01d869278ce44fd273d814237edd214fea7a4f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.223139/kopia-20210403.0.223139-macOS-arm64.tar.gz"
    sha256 "e773573ecebc09df4e77f95c237891e52753625bbf752d851873db7acef2d731"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.223139/kopia-20210403.0.223139-linux-x64.tar.gz"
    sha256 "ec23b5c11dfaac98970c4f2051c8e37dddf168b5ea7ab8202bd8057c6379c22a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.223139/kopia-20210403.0.223139-linux-arm.tar.gz"
    sha256 "145ea40f571d4dd2cf5e0fbdea88830d0c3149b9ab26a228b749c3b0f8bd7dcd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.223139/kopia-20210403.0.223139-linux-arm64.tar.gz"
    sha256 "8eccd8078de3fa800e4fc599b283b809607d1a4c0ae2393c579ed3164c1972c5"
  end

  def install
    bin.install "kopia"
  end
end
