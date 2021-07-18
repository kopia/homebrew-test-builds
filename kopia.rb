# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210718.0.91814"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.91814/kopia-20210718.0.91814-macOS-x64.tar.gz"
    sha256 "80a4ae19f7657e9e36c710d2197e10d272c834d1a55aaad9ec2969cf4876d6d9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.91814/kopia-20210718.0.91814-macOS-arm64.tar.gz"
    sha256 "27f9d1c9a9ce06d3fbcabb3f1654975ffc4eb8d732266b77ea5245ceaa66cbc7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.91814/kopia-20210718.0.91814-linux-x64.tar.gz"
    sha256 "6f963d80a2de7cba7808c8e7905674c80b91966f911cbac64902beec1c2784a5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.91814/kopia-20210718.0.91814-linux-arm.tar.gz"
    sha256 "793117d7c72706843b6fc11b39d408cc984508ee24ae6d9a1d8ef3502b9fb16f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210718.0.91814/kopia-20210718.0.91814-linux-arm64.tar.gz"
    sha256 "878ef2c7be2c3562d92e082b6c4ce8161f9c9d12a9dc2acb5fea39e898b2cfeb"
  end

  def install
    bin.install "kopia"
  end
end
