# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.221650"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.221650/kopia-20211103.0.221650-macOS-x64.tar.gz"
    sha256 "fe914e647afa061dc961eb9444079521fbcc15e4523f1b862d40ed0348cad0d1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.221650/kopia-20211103.0.221650-macOS-arm64.tar.gz"
    sha256 "477c75e56443d1a21a891b00bc162166ff8357083d9f3b19a4a1f93108fda1c8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.221650/kopia-20211103.0.221650-linux-x64.tar.gz"
    sha256 "521b606d4e12de70113fed1adf65d36abc26954e97529253693fa133df12530a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.221650/kopia-20211103.0.221650-linux-arm.tar.gz"
    sha256 "1e879843a24a945c3d6bceebd3a524bb90a22c95967927a868595fa4023d7a14"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.221650/kopia-20211103.0.221650-linux-arm64.tar.gz"
    sha256 "dd49eff694fc4dec7a09e3725f0d443be0ec9182b80f8feaf79bd0e8f665cc33"
  end

  def install
    bin.install "kopia"
  end
end
