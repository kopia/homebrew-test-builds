# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240717.0.32851"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240717.0.32851/kopia-20240717.0.32851-macOS-x64.tar.gz"
    sha256 "d56b8d5ab6d7f9fb08f759969ac42f07d83bb936c623f91f3997ee43687bf446"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240717.0.32851/kopia-20240717.0.32851-macOS-arm64.tar.gz"
    sha256 "c205edf5a38ebc936fb40effad7d80b8979c817108f03bb2b41208fb75fce114"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240717.0.32851/kopia-20240717.0.32851-linux-x64.tar.gz"
    sha256 "c52adc41796df6a9800b0b59ba289eae806aa27e66dad9550c7848835a27da78"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240717.0.32851/kopia-20240717.0.32851-linux-arm.tar.gz"
    sha256 "93913d9d23564e6d2545795bd8ea6ac8503ab45a6780d6ebaa4282a9a27796b0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240717.0.32851/kopia-20240717.0.32851-linux-arm64.tar.gz"
    sha256 "7b2c62fb3949de5b7cf58ca6922f455416bac16a0b36077fabbed2cc288e9b3d"
  end

  def install
    bin.install "kopia"
  end
end
