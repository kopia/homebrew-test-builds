# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210501.0.112050"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210501.0.112050/kopia-20210501.0.112050-macOS-x64.tar.gz"
    sha256 "d17028403a9b6a281e263b16724bee47fa00bdd474ab4384d751a2d7d6f04bee"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210501.0.112050/kopia-20210501.0.112050-macOS-arm64.tar.gz"
    sha256 "f20e2005755f9331eeed19f80566449e531d0fd5bda52bc3533841d0a0914283"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210501.0.112050/kopia-20210501.0.112050-linux-x64.tar.gz"
    sha256 "05c45489c8afa5ed22fa36bac2af43bb3df56c976357c7a12f70f8473b906cdf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210501.0.112050/kopia-20210501.0.112050-linux-arm.tar.gz"
    sha256 "d0193d7e29b6f4167712b4eb16f01f9d6ea1171317675e482a27ffaa51c8af76"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210501.0.112050/kopia-20210501.0.112050-linux-arm64.tar.gz"
    sha256 "0fe2d9f957f946d06b956ae41091754ad1a6c4fecb79687ad0652a34afa86d34"
  end

  def install
    bin.install "kopia"
  end
end
