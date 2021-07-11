# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210710.0.194627"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.194627/kopia-20210710.0.194627-macOS-x64.tar.gz"
    sha256 "8bfe800de43d4cf34c47e5138561ef78e5cac7c5c6998e4dc49c88e11b877593"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.194627/kopia-20210710.0.194627-macOS-arm64.tar.gz"
    sha256 "adbf45935538aa8f4d596c4890f1eccc814b72cf8bb1fccd5b48def4935916aa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.194627/kopia-20210710.0.194627-linux-x64.tar.gz"
    sha256 "7dd8d2dab0bcba3d07c7e6575ed89987fd0d90cc076c2de4e748dd9844dd9ee7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.194627/kopia-20210710.0.194627-linux-arm.tar.gz"
    sha256 "db87da788e1ae22a021c17d21e6dd5a1fcf90166c174a6aa3d9ca0859f95adab"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.194627/kopia-20210710.0.194627-linux-arm64.tar.gz"
    sha256 "1f7afcdf9d7455d675cc60b504f1b5496aad28866cec8cb06b0e5cfe4b5b946c"
  end

  def install
    bin.install "kopia"
  end
end
