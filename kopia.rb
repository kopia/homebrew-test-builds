# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220819.0.93352"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.93352/kopia-20220819.0.93352-macOS-x64.tar.gz"
    sha256 "0225bb4a272c675f011f876a098ce73291ec0fc7c5047e9f2c006482be6f3ec2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.93352/kopia-20220819.0.93352-macOS-arm64.tar.gz"
    sha256 "0907d0f0e999af4ff9979c7f77e5c31aa10912fea70e623034b0d26d45d435ea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.93352/kopia-20220819.0.93352-linux-x64.tar.gz"
    sha256 "d7a78faf8a8563e7d7f7c830831c17de7a0e3fe6014e1ab6af1a8139a35f4120"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.93352/kopia-20220819.0.93352-linux-arm.tar.gz"
    sha256 "b188a79a9d34aa322d575b7f3f142350a80c17dcc6688167ec6644fcbd495e18"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.93352/kopia-20220819.0.93352-linux-arm64.tar.gz"
    sha256 "bf181d92b2553538c773e68ea96a13ab61d86c1c62cb372f43d11b4ca2caa579"
  end

  def install
    bin.install "kopia"
  end
end
