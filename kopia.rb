# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210902.0.213808"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.213808/kopia-20210902.0.213808-macOS-x64.tar.gz"
    sha256 "0defc0a829ad55d407ad035419be248a11d41edcf447c8ec13267cc6fef0b7e0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.213808/kopia-20210902.0.213808-macOS-arm64.tar.gz"
    sha256 "79e0ca230d8c6361375026f8873ec1f1aedfbd901a3996ec41a5446d8dd4c02d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.213808/kopia-20210902.0.213808-linux-x64.tar.gz"
    sha256 "40efe880d2b7cd085c1debed7681006a48f7afdc865a5219943f828b6edc0df4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.213808/kopia-20210902.0.213808-linux-arm.tar.gz"
    sha256 "38962759b073db0477f69818063e10ce3afedb0b6a513947ffd504206b6787de"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.213808/kopia-20210902.0.213808-linux-arm64.tar.gz"
    sha256 "ccc0490aef3e02ae845f2eb10599b0be43e81ae839f6b26be22ac6078353d244"
  end

  def install
    bin.install "kopia"
  end
end
