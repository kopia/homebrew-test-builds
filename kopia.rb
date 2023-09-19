# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230919.0.151919"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.151919/kopia-20230919.0.151919-macOS-x64.tar.gz"
    sha256 "187a9945aaa69791a478905522f3c693e06bf947e1312a8e7a8192be83572279"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.151919/kopia-20230919.0.151919-macOS-arm64.tar.gz"
    sha256 "41ee29c5356eb4a11286d3fc6e44d1d70e44ff0397d373ec28e55cf15a01007e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.151919/kopia-20230919.0.151919-linux-x64.tar.gz"
    sha256 "817b9db1fd791bb3c92c3ec84227458a0e896c55df14a19e9414d2fa9c87d0e5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.151919/kopia-20230919.0.151919-linux-arm.tar.gz"
    sha256 "6920fbaf49b69ca432cf48a5afb8feb1326361735dfd3a3448f6c3d902102727"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.151919/kopia-20230919.0.151919-linux-arm64.tar.gz"
    sha256 "7a711497bbcb1a1130b8b397b37cc310f6c10b3ed6723fe9f65c89be48963b1d"
  end

  def install
    bin.install "kopia"
  end
end
