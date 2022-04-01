# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220401.0.10351"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220401.0.10351/kopia-20220401.0.10351-macOS-x64.tar.gz"
    sha256 "adc28c3145646f3afbd27e54af64832270bfe2e4b37958d63a0587774249ccb0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220401.0.10351/kopia-20220401.0.10351-macOS-arm64.tar.gz"
    sha256 "1fc7fba6872b077a33b3416b6e9b59fc79f772c25252ed61104f2148ec5a9282"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220401.0.10351/kopia-20220401.0.10351-linux-x64.tar.gz"
    sha256 "20f0bed55337b395f847942d422e7b9801eb15151164197fe97f29681b604abc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220401.0.10351/kopia-20220401.0.10351-linux-arm.tar.gz"
    sha256 "5bbd9f846d72ed2b1a2766718ac5db37866f2adc21faf00c1ea7f9634c831a9f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220401.0.10351/kopia-20220401.0.10351-linux-arm64.tar.gz"
    sha256 "76e285e4b8882fddebee770d807157a59428c82da9b3892d29ccf3f9d3ad96ee"
  end

  def install
    bin.install "kopia"
  end
end
