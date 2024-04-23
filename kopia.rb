# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240422.0.172233"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240422.0.172233/kopia-20240422.0.172233-macOS-x64.tar.gz"
    sha256 "627e164ee0f8a642023a1181688c57658b20c3687b930f44340b0ea7348a72ed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240422.0.172233/kopia-20240422.0.172233-macOS-arm64.tar.gz"
    sha256 "a4825a694da4623e38126583fa83ea6b1caac44f24a49e5faf461b8d49c7a5d4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240422.0.172233/kopia-20240422.0.172233-linux-x64.tar.gz"
    sha256 "a665f0c2b78d03f0059afe010e81fbcc77ab542bee1cf198b19bf2e4b8790e0a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240422.0.172233/kopia-20240422.0.172233-linux-arm.tar.gz"
    sha256 "2753920ba2e780849f341480ae6919e74683bc3c0fd216c9155fe6508025dae8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240422.0.172233/kopia-20240422.0.172233-linux-arm64.tar.gz"
    sha256 "83479eebdd581391b39872226135245a13edb510d8e30b525ae2a7fca8fc9d94"
  end

  def install
    bin.install "kopia"
  end
end
