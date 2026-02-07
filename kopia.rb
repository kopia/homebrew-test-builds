# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260207.0.34526"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260207.0.34526/kopia-20260207.0.34526-macOS-x64.tar.gz"
    sha256 "7553ac389a0902e8324f3ce3dd2a9598948e13d8d8cd14b0f9f9ecb05e33777f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260207.0.34526/kopia-20260207.0.34526-macOS-arm64.tar.gz"
    sha256 "7122ab77e3d1139d8d414f73d45178545beea944019ccd4888b38df585deccab"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260207.0.34526/kopia-20260207.0.34526-linux-x64.tar.gz"
    sha256 "e1768d92430c934b62579cde9f124b24d4a3232dd87ddb20440c0dc30dcce911"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260207.0.34526/kopia-20260207.0.34526-linux-arm.tar.gz"
    sha256 "91fedbe0f86c858aa636ba30499a27e9da219c41e53dc9ca2f4d663c4d6e5ebe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260207.0.34526/kopia-20260207.0.34526-linux-arm64.tar.gz"
    sha256 "b734f9b6892128151d6cc285cebdbe19be66d2d87792bd6107219134bf7888c9"
  end

  def install
    bin.install "kopia"
  end
end
