# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210427.0.10952"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.10952/kopia-20210427.0.10952-macOS-x64.tar.gz"
    sha256 "3b461b8b447ebe483a7d3ebaffac04b542506b14bd81f32175b0e523050e6388"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.10952/kopia-20210427.0.10952-macOS-arm64.tar.gz"
    sha256 "4cf1845040c9a21e333c02bc5f22fba9f79d0ab9a6e645900033b62b90bd8111"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.10952/kopia-20210427.0.10952-linux-x64.tar.gz"
    sha256 "82eb9f68f8ee34af310f160ed5ef0f227bcffbd08c086ddf7894683d5f63822b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.10952/kopia-20210427.0.10952-linux-arm.tar.gz"
    sha256 "38f21ec8cdc3e8ee45994c0f9ca04c4e709ace1440f123e1bed378e6e7126c10"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210427.0.10952/kopia-20210427.0.10952-linux-arm64.tar.gz"
    sha256 "9124707cd56103ded8bbb968662ab160308eafaa8289d6436073e20cebf4b080"
  end

  def install
    bin.install "kopia"
  end
end
