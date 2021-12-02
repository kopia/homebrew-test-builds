# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211201.0.213551"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.213551/kopia-20211201.0.213551-macOS-x64.tar.gz"
    sha256 "9f17394b9fa0a3ca26386489b6c870aae8af9fd3048669957edacbc048131a1f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.213551/kopia-20211201.0.213551-macOS-arm64.tar.gz"
    sha256 "a958f6c35c4588332841aebbcd652f667fee2fb83a8da02162e7324b248db100"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.213551/kopia-20211201.0.213551-linux-x64.tar.gz"
    sha256 "720cde35de03ab85361e4c15b5b4f43ff61a70b89a64172d3a71038caf3a1751"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.213551/kopia-20211201.0.213551-linux-arm.tar.gz"
    sha256 "6796ab8a283583d961365136a4217bc228bb757ee9842714d007276ddb07c0d4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.213551/kopia-20211201.0.213551-linux-arm64.tar.gz"
    sha256 "9f97494a3221a3dd93f10d0838125338d0da08db7277afc2b47b79c13f725eba"
  end

  def install
    bin.install "kopia"
  end
end
