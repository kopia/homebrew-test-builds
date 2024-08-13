# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240812.0.200227"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240812.0.200227/kopia-20240812.0.200227-macOS-x64.tar.gz"
    sha256 "996680a02fc50dd25c5908e0cc8e075bda797dc24c518525e6893b2be3c07e24"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240812.0.200227/kopia-20240812.0.200227-macOS-arm64.tar.gz"
    sha256 "c9c52abaf740893bac29dbc1037ed5e57e73671f340c0030c1df250a820d0bfb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240812.0.200227/kopia-20240812.0.200227-linux-x64.tar.gz"
    sha256 "47feb6cb65dd2a6eacd5c6a02d336506fb902a8fa049b5b68d5ab860673fe65c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240812.0.200227/kopia-20240812.0.200227-linux-arm.tar.gz"
    sha256 "007f7eae85331406c7d0185d13c6d67fbfcc8c05b0b41e9aebfc46e47bceaaf9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240812.0.200227/kopia-20240812.0.200227-linux-arm64.tar.gz"
    sha256 "4874e1b931c28553681292d0acb375ae955f02d1da5473389572854647af62ec"
  end

  def install
    bin.install "kopia"
  end
end
