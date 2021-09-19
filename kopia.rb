# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210919.0.95726"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.95726/kopia-20210919.0.95726-macOS-x64.tar.gz"
    sha256 "756e2f993b530cf37c59ffc6da79b7564bedc41182a5380c1d6041b8ce2dfa35"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.95726/kopia-20210919.0.95726-macOS-arm64.tar.gz"
    sha256 "96f833d3588c06349094efd0e50666354c78916f6748f2afc2c965c16070fd47"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.95726/kopia-20210919.0.95726-linux-x64.tar.gz"
    sha256 "f2970b18313fc25943032a3830cdf09c7496031385ebe9f08c51a73d397c293f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.95726/kopia-20210919.0.95726-linux-arm.tar.gz"
    sha256 "bc762956371aedb1146558a87784425279637454b9f6e4ccbb7536d65fc4c01e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.95726/kopia-20210919.0.95726-linux-arm64.tar.gz"
    sha256 "45088303e450021687ad696abda2ebf53036707fcf393a2e45b1e7a6151d738c"
  end

  def install
    bin.install "kopia"
  end
end
