# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210726.0.185758"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210726.0.185758/kopia-20210726.0.185758-macOS-x64.tar.gz"
    sha256 "de662709a0edc1bedd6462ceebc31508e8c375e67da9ab6f1e08ae50354457fb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210726.0.185758/kopia-20210726.0.185758-macOS-arm64.tar.gz"
    sha256 "d9849c9bce58febd67f4371c6e544dbefc6bf6cddbb92ea20f93e91efa6ea4e7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210726.0.185758/kopia-20210726.0.185758-linux-x64.tar.gz"
    sha256 "6b92b789748003d689436749cdb7a02a1f5c83dbaccd4eb0d3b0fd0bf7932ddc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210726.0.185758/kopia-20210726.0.185758-linux-arm.tar.gz"
    sha256 "c9b2352e6b9d2f8c31f42ec4e455a27b8896c7be8257fdb8d1337186b845d79e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210726.0.185758/kopia-20210726.0.185758-linux-arm64.tar.gz"
    sha256 "b6af5eba9b89d20551313ee68978c86e5d37156d170cedc543b36e82ab6fda95"
  end

  def install
    bin.install "kopia"
  end
end
