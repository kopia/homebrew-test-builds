# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220708.0.212259"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.212259/kopia-20220708.0.212259-macOS-x64.tar.gz"
    sha256 "b1a553169088cfa8d248ac224a242d482f58b53f56ca24cf82b4cfb675a47013"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.212259/kopia-20220708.0.212259-macOS-arm64.tar.gz"
    sha256 "9c1016f9afda7e85b03df0ddadfe8c330843996ed1d035303e91cd11eacc030d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.212259/kopia-20220708.0.212259-linux-x64.tar.gz"
    sha256 "98a09573c424eb9f4fa611cacfafa56c7480e78826bb5153fb2f1bb7e6f79e10"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.212259/kopia-20220708.0.212259-linux-arm.tar.gz"
    sha256 "ee8ac91800de9a174fcb11bdd34438cc9b8dc5929b20f9a4906c928a48bb5504"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.212259/kopia-20220708.0.212259-linux-arm64.tar.gz"
    sha256 "300105b824ee08ed8b730e2da8fd17eef697f907ec51c5fae1b900e1c7323e3f"
  end

  def install
    bin.install "kopia"
  end
end
