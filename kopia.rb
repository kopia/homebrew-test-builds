# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210515.0.121234"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.121234/kopia-20210515.0.121234-macOS-x64.tar.gz"
    sha256 "0e42ae35d6bc7e85109b3b35a41c2318bde431ed6f33cfb375b816c71a23bb70"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.121234/kopia-20210515.0.121234-macOS-arm64.tar.gz"
    sha256 "3ade5552c95c123bf82358c4ed86febf57d917cd84c7eaed076418cc0add392d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.121234/kopia-20210515.0.121234-linux-x64.tar.gz"
    sha256 "01f8a415af14e9b282f3febb9396ed3da18367a849671c4ad140e698b88ae14e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.121234/kopia-20210515.0.121234-linux-arm.tar.gz"
    sha256 "6f20d7757e5429158c5117c58f5ba616dcf35db0ea713fe32d7d14e5baec40fc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.121234/kopia-20210515.0.121234-linux-arm64.tar.gz"
    sha256 "ecd5c45959a098490975e9032f111f58379485f7181e446179a47d20d1b7e3f8"
  end

  def install
    bin.install "kopia"
  end
end
