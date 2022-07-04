# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220703.0.213029"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.213029/kopia-20220703.0.213029-macOS-x64.tar.gz"
    sha256 "f70015c5d00f309812f301b3de5895226e9a0b4b578b3e028cf6ae1ca30655cd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.213029/kopia-20220703.0.213029-macOS-arm64.tar.gz"
    sha256 "f2cad7a61a1a0d8807cbda7eb1fb1f6093c7c4cf268982e34be3752a5f40cb86"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.213029/kopia-20220703.0.213029-linux-x64.tar.gz"
    sha256 "86d931b02b6719a4784998f169d52869dad8fddfb4bf57cf3554a212397040e4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.213029/kopia-20220703.0.213029-linux-arm.tar.gz"
    sha256 "db8524d761dfd51fcad5a2e69187a162734d6b16ebb954e37ee6203dc300417e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.213029/kopia-20220703.0.213029-linux-arm64.tar.gz"
    sha256 "9108b85c406b7e18b1ef07edba4ff7cf08380330deb7e4211b3ce00477d20753"
  end

  def install
    bin.install "kopia"
  end
end
