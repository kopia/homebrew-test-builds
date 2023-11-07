# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231106.0.160721"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231106.0.160721/kopia-20231106.0.160721-macOS-x64.tar.gz"
    sha256 "fdb941731071e746333e7bfabf4b16ee5e9a9f506b84110adb7c7973015df9a5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231106.0.160721/kopia-20231106.0.160721-macOS-arm64.tar.gz"
    sha256 "e615aff6efc406d3c4e0d7acd4e2f12e843f85b1e78b768926f931d4f59c87cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231106.0.160721/kopia-20231106.0.160721-linux-x64.tar.gz"
    sha256 "12b34e1f0b261b8d7eefcbb4c02a1c2e425e0bb24d69f9ae8d8e49ffd2ab6fcc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231106.0.160721/kopia-20231106.0.160721-linux-arm.tar.gz"
    sha256 "70743b0656f0ddd0d01192bf39c80794f4b3ef4b419465fa5a327b6bd19dd84e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231106.0.160721/kopia-20231106.0.160721-linux-arm64.tar.gz"
    sha256 "a246b3daa2258d356ba9610bbc4fbe46f5d9cbb4b55caa2d5066ec161b0dde39"
  end

  def install
    bin.install "kopia"
  end
end
