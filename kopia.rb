# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220103.0.213305"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.213305/kopia-20220103.0.213305-macOS-x64.tar.gz"
    sha256 "6f18b8f7535c63b7076d795e76b768c2a0e968b8a56eb8b37a3a857b8797606c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.213305/kopia-20220103.0.213305-macOS-arm64.tar.gz"
    sha256 "b64eb49a1085e5c7c6274c7cbeca65a4100d2cebfa66b1aecf0f6c962182d1f0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.213305/kopia-20220103.0.213305-linux-x64.tar.gz"
    sha256 "a5a53b895c2c82a71d2c5a6043325f5e6da71aed84e3cbbe3c33953f03eb9ae2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.213305/kopia-20220103.0.213305-linux-arm.tar.gz"
    sha256 "eaafba476af18cda7ad601bc11fd14c19e4db21628e8a92cbb64bd58e05d5cec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.213305/kopia-20220103.0.213305-linux-arm64.tar.gz"
    sha256 "591d2ca718ffafc0fc99077f442b7b76597b2cccbb457a2a63500c5e633e69c6"
  end

  def install
    bin.install "kopia"
  end
end
