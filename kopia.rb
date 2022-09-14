# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220914.0.71425"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.71425/kopia-20220914.0.71425-macOS-x64.tar.gz"
    sha256 "18c87198541797d7411b2c578b2d735846ca04e5f0b70a5ce0e2f9a644604625"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.71425/kopia-20220914.0.71425-macOS-arm64.tar.gz"
    sha256 "c3a8e90dab987c15e2236ad53c908c2ff103598e2db4263af549e1e763210374"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.71425/kopia-20220914.0.71425-linux-x64.tar.gz"
    sha256 "5a8dba715b71f929fa652405d66310827ced9e30d7233c2b5c1afccc43e85773"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.71425/kopia-20220914.0.71425-linux-arm.tar.gz"
    sha256 "3065b71d2860bfcd4b3902fe9e45fb5cffcbe69523be6bc3240a242962694159"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.71425/kopia-20220914.0.71425-linux-arm64.tar.gz"
    sha256 "815966858d0d448473f6f59a3065d0d3248d229bb0b7e33a499245333f02c5f6"
  end

  def install
    bin.install "kopia"
  end
end
