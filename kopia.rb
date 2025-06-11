# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250611.0.2414"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.2414/kopia-20250611.0.2414-macOS-x64.tar.gz"
    sha256 "52427b4f3bf297c4a157ac00c737c55cae5f785c9d96b5acf7bddf2e8cf28441"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.2414/kopia-20250611.0.2414-macOS-arm64.tar.gz"
    sha256 "dcf19b5c855069d6f26fe7c1dc2628be1f037dab6b3f40d1cd3eff8e6c2b4c58"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.2414/kopia-20250611.0.2414-linux-x64.tar.gz"
    sha256 "b1ad23e6264f9d314836853ffe4fa3044ef4fef5412272e0bc00ad2d2ec8a2f0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.2414/kopia-20250611.0.2414-linux-arm.tar.gz"
    sha256 "5af1c7fa03c520881d5ec62bec987a13eb28dac8814b940574a04c7327f85be9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.2414/kopia-20250611.0.2414-linux-arm64.tar.gz"
    sha256 "2c80db8f64e52cdea0708d534f33c1b21b33f24f23410d20c4780240de53ce31"
  end

  def install
    bin.install "kopia"
  end
end
