# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210729.0.62606"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210729.0.62606/kopia-20210729.0.62606-macOS-x64.tar.gz"
    sha256 "5d93cf03feb4ea7381f45f725a2fc41719aed07490a24dc812e73f3f22cdf884"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210729.0.62606/kopia-20210729.0.62606-macOS-arm64.tar.gz"
    sha256 "55c0880dffc914cc1d90258eda5ca25559cd297b005dbeb9f100046c476f00eb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210729.0.62606/kopia-20210729.0.62606-linux-x64.tar.gz"
    sha256 "708f70bdc57fe022364b510ec94f6416b7465c76b1c211bd947260b4d20651fe"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210729.0.62606/kopia-20210729.0.62606-linux-arm.tar.gz"
    sha256 "d74f38e8d9fd44d7c13126efbc321b6683c4fc974e47b797bd906b1178702418"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210729.0.62606/kopia-20210729.0.62606-linux-arm64.tar.gz"
    sha256 "e9b2e3bfb40b6243b3568c4b5d62cc0d9f656227c8469f2eb4db3bbc3241e22e"
  end

  def install
    bin.install "kopia"
  end
end
