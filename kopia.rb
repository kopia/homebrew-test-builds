# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211211.0.100834"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.100834/kopia-20211211.0.100834-macOS-x64.tar.gz"
    sha256 "9f4cc129ec3de8217919d0da86fcae68e1013c80b017f1427e33348a62e2f2fc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.100834/kopia-20211211.0.100834-macOS-arm64.tar.gz"
    sha256 "f4925714c0742e35a502e7445cd6a1a7c1162d1f34ed840fb5aed10a099f03a2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.100834/kopia-20211211.0.100834-linux-x64.tar.gz"
    sha256 "b7c8d57602a04cfc28627828f32affaa5f12cb4966cc92769090ef11c850cc08"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.100834/kopia-20211211.0.100834-linux-arm.tar.gz"
    sha256 "b13590cd3d1d122a94d94526beb4c9b6d639b8e18ebbb0fab93de3410a48a3c9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.100834/kopia-20211211.0.100834-linux-arm64.tar.gz"
    sha256 "b79f5f121d1c5e48edab02baf0ca64371b311861fe56e57b59b3c2802351c1ed"
  end

  def install
    bin.install "kopia"
  end
end
