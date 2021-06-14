# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210613.0.185249"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210613.0.185249/kopia-20210613.0.185249-macOS-x64.tar.gz"
    sha256 "9864864731c84c37fa05588b1ca61312a5c741efe392fae92bea22cabbe6bbd9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210613.0.185249/kopia-20210613.0.185249-macOS-arm64.tar.gz"
    sha256 "299140ec3904d4edc8e07eff3efa874cdac3f1f1621cb3c759c1c7c296b4ac30"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210613.0.185249/kopia-20210613.0.185249-linux-x64.tar.gz"
    sha256 "79a10713dc82d03d21f2febb824721daddd3d56617866a2c8b7f60a2b92c298c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210613.0.185249/kopia-20210613.0.185249-linux-arm.tar.gz"
    sha256 "95cb28812060ccc6d3e1459b263ea4d954cca4b12ef5ec9b4bd424600108c686"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210613.0.185249/kopia-20210613.0.185249-linux-arm64.tar.gz"
    sha256 "b8c9394318798d894b1950495edf6ee4830c65b40ed464f0b9911d7eec98044a"
  end

  def install
    bin.install "kopia"
  end
end
