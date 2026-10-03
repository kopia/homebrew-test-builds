# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261003.0.51009"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.51009/kopia-20261003.0.51009-macOS-x64.tar.gz"
    sha256 "aa7164a003c19819f303d654e7e0657d970e0eb8dfd1f1f7972df3f91bd47970"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.51009/kopia-20261003.0.51009-macOS-arm64.tar.gz"
    sha256 "11d60d620d7d85c7e5eb1b7e13a676386dea8fd1e22086458253df35e42dc851"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.51009/kopia-20261003.0.51009-linux-x64.tar.gz"
    sha256 "ea145b585d9aacb4108137e9fbd9095abd0e2bc034b7f9379926db545b75e737"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.51009/kopia-20261003.0.51009-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.51009/kopia-20261003.0.51009-linux-arm64.tar.gz"
    sha256 "fe85b6cf2ccb1cecced750bb6af6301c7a7b7affae9f1af53b37dddc2f3e1388"
  end

  def install
    bin.install "kopia"
  end
end
