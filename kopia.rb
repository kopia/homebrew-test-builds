# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220609.0.155628"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220609.0.155628/kopia-20220609.0.155628-macOS-x64.tar.gz"
    sha256 "b1f6445ae57173f42ebbbeba4b236d0cc614942eb83ffbc4e2d914c8b67e435e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220609.0.155628/kopia-20220609.0.155628-macOS-arm64.tar.gz"
    sha256 "f16dd9f93b31f1625c591d1bee8df9ecac21d2ae81c2bf9e6f23224c484d8463"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220609.0.155628/kopia-20220609.0.155628-linux-x64.tar.gz"
    sha256 "88e11bd5194e65f117f7bf0d6a490c3cd93461f9ccc4ace73fe2d61fa6c21442"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220609.0.155628/kopia-20220609.0.155628-linux-arm.tar.gz"
    sha256 "5934b76e077b320c65948501f6af1abae73e1a51a47132a50754318375463608"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220609.0.155628/kopia-20220609.0.155628-linux-arm64.tar.gz"
    sha256 "7aac4ae553c01e3121059c4c4198ee24d212b353c38bb5045fdec93462e14a97"
  end

  def install
    bin.install "kopia"
  end
end
