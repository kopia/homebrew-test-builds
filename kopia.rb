# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240313.0.150233"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.150233/kopia-20240313.0.150233-macOS-x64.tar.gz"
    sha256 "2f1964c43b213ed8e2dc6d622a37484af652061f30277a5518feeeb3653097ba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.150233/kopia-20240313.0.150233-macOS-arm64.tar.gz"
    sha256 "ee79bdf0f45e7991303c3dcc4e9d94df88d5a27f0c4340e4b16945a129b688a7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.150233/kopia-20240313.0.150233-linux-x64.tar.gz"
    sha256 "3775c3ca624bbd510307b4fe6ed3d2ea77fad2987c71e77910a8c818793bfbbc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.150233/kopia-20240313.0.150233-linux-arm.tar.gz"
    sha256 "7fd575418a694c9eb6e38213d93f4ba35f3649f6d71729e52b1c30e2f4ab6a4d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.150233/kopia-20240313.0.150233-linux-arm64.tar.gz"
    sha256 "4f0ec4b8acf747cbd9ce29dddac97b9372636699f2dadf0f621a3ff6199c7550"
  end

  def install
    bin.install "kopia"
  end
end
