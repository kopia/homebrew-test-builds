# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220321.0.215014"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220321.0.215014/kopia-20220321.0.215014-macOS-x64.tar.gz"
    sha256 "5e9f03063980a66010511539cf77d8dc001b9f23524e98d8165a8ca45ffd9639"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220321.0.215014/kopia-20220321.0.215014-macOS-arm64.tar.gz"
    sha256 "a89451e937c668f98b0e43f09bcf129192da400532006dcbcb31913f1a3d73cf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220321.0.215014/kopia-20220321.0.215014-linux-x64.tar.gz"
    sha256 "8c4f13c4c7353950b5bd6a380ea661fad690487df3fa73cb477e1577f6ba75c8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220321.0.215014/kopia-20220321.0.215014-linux-arm.tar.gz"
    sha256 "c006d3581069f2c4a3974efaffbb64d6885f873dec50ba771742a44de9c94fbd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220321.0.215014/kopia-20220321.0.215014-linux-arm64.tar.gz"
    sha256 "f899a9c441f8bb6f2a696c7e7ccbb4acecc1f28ac761901000bc732f7943f32b"
  end

  def install
    bin.install "kopia"
  end
end
