# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210613.0.83025"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210613.0.83025/kopia-20210613.0.83025-macOS-x64.tar.gz"
    sha256 "70044107e39ac669e16415682f0524fcc95339758078b5fea913226711570b35"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210613.0.83025/kopia-20210613.0.83025-macOS-arm64.tar.gz"
    sha256 "3c24a0f1d345b5c46ec639b5a29a4c005287a376281f1a607e349fae14a02d78"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210613.0.83025/kopia-20210613.0.83025-linux-x64.tar.gz"
    sha256 "c4c82d3a53eb8d6ef17c84899b9612dfdb12c0dee73f4f8c1855aa165a62ac23"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210613.0.83025/kopia-20210613.0.83025-linux-arm.tar.gz"
    sha256 "b20592f361a1606b5573afde2aeedddb753bbe04882848bab013920302dd2510"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210613.0.83025/kopia-20210613.0.83025-linux-arm64.tar.gz"
    sha256 "81d0d3460749bd9b5b15e148ce551f951264a9ad48860987741d92299a377821"
  end

  def install
    bin.install "kopia"
  end
end
