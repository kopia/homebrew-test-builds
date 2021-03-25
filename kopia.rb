# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210324.0.184427"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210324.0.184427/kopia-20210324.0.184427-macOS-x64.tar.gz"
    sha256 "74ee584d139a3e3b4ec242ebea94307e594508551383b6d42b62496bcdb1fa25"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210324.0.184427/kopia-20210324.0.184427-macOS-arm64.tar.gz"
    sha256 "1f9a681a00c4500596be19a60f93555c000105fda3c8c9ded8add2df8968d65f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210324.0.184427/kopia-20210324.0.184427-linux-x64.tar.gz"
    sha256 "ea70d99bc23841a770bc89b05f073379fcfe99d86b4c0374f51517923b6eba72"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210324.0.184427/kopia-20210324.0.184427-linux-arm.tar.gz"
    sha256 "f74cdde6ace687736d603cd977143a470375ee795c0e97b2afbea558560b6903"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210324.0.184427/kopia-20210324.0.184427-linux-arm64.tar.gz"
    sha256 "5e6b368166d79f8175be9bfda21127c1a10668046722d46d9e6d41ecd0f6a17e"
  end

  def install
    bin.install "kopia"
  end
end
