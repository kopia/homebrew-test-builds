# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220320.0.203832"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220320.0.203832/kopia-20220320.0.203832-macOS-x64.tar.gz"
    sha256 "5d5ea7e4d4bd38e21fbb502e4aaf22d286b96fb660b309fafc2d49f49f66896e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220320.0.203832/kopia-20220320.0.203832-macOS-arm64.tar.gz"
    sha256 "405c01581bc497d1f1487aa1f74f69c54ff4201336517a9829afaa7dbb854621"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220320.0.203832/kopia-20220320.0.203832-linux-x64.tar.gz"
    sha256 "1259911ad14b8f47f85aa1830aac61412cf4b6fa50dbc1d6e016772335d3cd9c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220320.0.203832/kopia-20220320.0.203832-linux-arm.tar.gz"
    sha256 "14f8f20d16aaf96ef1db1d3d5197ca330d3b021c777d358c87c08d42a049fa20"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220320.0.203832/kopia-20220320.0.203832-linux-arm64.tar.gz"
    sha256 "d5800ee3b47cbc15a533f9b08cb6cab46a37511fec6a750b19c315140619c152"
  end

  def install
    bin.install "kopia"
  end
end
