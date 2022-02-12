# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220211.0.203415"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.203415/kopia-20220211.0.203415-macOS-x64.tar.gz"
    sha256 "7971cca72a693bb9915f4fa61ac920b93bf8d79520038016e2c2973b8954b49b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.203415/kopia-20220211.0.203415-macOS-arm64.tar.gz"
    sha256 "dcf45951c2bf462f93f46b6f0cab67f403f504dc6d1e9e8c5ac06cd31d0e4928"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.203415/kopia-20220211.0.203415-linux-x64.tar.gz"
    sha256 "888e4b30f721911d33669c8e533b874310d2a3513442d974e01269808fdfc980"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.203415/kopia-20220211.0.203415-linux-arm.tar.gz"
    sha256 "0c4a04163e658377b439b13a1eef796024f84fd935cb7ab998bd0884837eff81"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.203415/kopia-20220211.0.203415-linux-arm64.tar.gz"
    sha256 "7dbf046b8c9d53f7e5a8078b685ac8d9d8a2ca508411c2c6385e25dd84e7d8d6"
  end

  def install
    bin.install "kopia"
  end
end
