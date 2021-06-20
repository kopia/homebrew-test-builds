# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210619.0.184713"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210619.0.184713/kopia-20210619.0.184713-macOS-x64.tar.gz"
    sha256 "e5517af9cb2da7374d1765b2dc0bb08ac0110fa18626307ea7d9964974684a60"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210619.0.184713/kopia-20210619.0.184713-macOS-arm64.tar.gz"
    sha256 "ed140bf8f2aecf22a23363da9a875102895b4d9ca6379900ebaaf963945e3f70"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210619.0.184713/kopia-20210619.0.184713-linux-x64.tar.gz"
    sha256 "b15778eecfb1a821e7d240a42902b0cc928df37970d76b2bfef18c09064701c7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210619.0.184713/kopia-20210619.0.184713-linux-arm.tar.gz"
    sha256 "b066c6a3dd8b1d3fd2dc23c433fe4532435be58d5e833800517b4acf0c417c6c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210619.0.184713/kopia-20210619.0.184713-linux-arm64.tar.gz"
    sha256 "44cb5cd5550e74f7275f264ee283ea19d078fa037d09c4925722d8f87b956482"
  end

  def install
    bin.install "kopia"
  end
end
