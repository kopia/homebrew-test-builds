# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260917.0.44138"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260917.0.44138/kopia-20260917.0.44138-macOS-x64.tar.gz"
    sha256 "720bbd689d8cf641cf2229bb4b34a8e2159a01902be31464795170132d12dec0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260917.0.44138/kopia-20260917.0.44138-macOS-arm64.tar.gz"
    sha256 "c44564e553118aa64a05199b4ca51db95ba34f47dafd31ca9dbc2d07b2814a32"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260917.0.44138/kopia-20260917.0.44138-linux-x64.tar.gz"
    sha256 "2bf0912ebf21b8133e70ec31ad0591636f63bb58441ea4b1ac70b73f3d2ac618"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260917.0.44138/kopia-20260917.0.44138-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260917.0.44138/kopia-20260917.0.44138-linux-arm64.tar.gz"
    sha256 "5550ba06b037cb5cc7ca6bef4cd7810d63edb68710a487eb5125047eeafe9498"
  end

  def install
    bin.install "kopia"
  end
end
