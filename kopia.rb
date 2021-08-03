# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210802.0.222433"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.222433/kopia-20210802.0.222433-macOS-x64.tar.gz"
    sha256 "f8722f3ddc98517d25e6c610fd84b2823ba00fe86679394fc50b934674ec1188"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.222433/kopia-20210802.0.222433-macOS-arm64.tar.gz"
    sha256 "7a80f9258721038edeeb67e8e0defb37dbf9caed18adc335002bed6c2783a887"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.222433/kopia-20210802.0.222433-linux-x64.tar.gz"
    sha256 "426d3a8b91a4ef437f768d8c1a408981ced65d096c58e8350a19e90a8305e769"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.222433/kopia-20210802.0.222433-linux-arm.tar.gz"
    sha256 "1855326430d3ec489a1e44d45c0c3dabb0ca28500153fd90409711392b5c8f87"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.222433/kopia-20210802.0.222433-linux-arm64.tar.gz"
    sha256 "99d90027c24741f41d13513970ff83a903367cb56be58e4b222c5df2332d4e22"
  end

  def install
    bin.install "kopia"
  end
end
