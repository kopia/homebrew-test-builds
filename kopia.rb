# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210718.0.93338"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.93338/kopia-20210718.0.93338-macOS-x64.tar.gz"
    sha256 "08d934b4129331114ddd419c3f19ee24a557cb2daad1ba64669290e17fbac820"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.93338/kopia-20210718.0.93338-macOS-arm64.tar.gz"
    sha256 "6b1c2cbee99157b72670d6a59b2c9c5434715ba67a147a0bc2c95d20acf27bf7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.93338/kopia-20210718.0.93338-linux-x64.tar.gz"
    sha256 "99237f86ffd3558abe33724322e50ba80d45302b0c28cab7c45d1908d405776a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.93338/kopia-20210718.0.93338-linux-arm.tar.gz"
    sha256 "0aeaf58b349fdb15e73cb9c424ca2036197ac4158981e8d98a0197c1bd08388d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.93338/kopia-20210718.0.93338-linux-arm64.tar.gz"
    sha256 "7081e2b723c004ef71326dbc07e2d14455979f3eca1550f8256e842110e510bf"
  end

  def install
    bin.install "kopia"
  end
end
