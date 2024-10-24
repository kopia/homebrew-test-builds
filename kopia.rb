# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241023.0.184651"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241023.0.184651/kopia-20241023.0.184651-macOS-x64.tar.gz"
    sha256 "2ed9149fbe905447a634adb5e6342e2d4b882a1a4dbeb55c6ea76cb0a4926f13"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241023.0.184651/kopia-20241023.0.184651-macOS-arm64.tar.gz"
    sha256 "f1874625ab4648399b44d48a590d704c89759e4f1ed1df807bb554fa29a45c21"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241023.0.184651/kopia-20241023.0.184651-linux-x64.tar.gz"
    sha256 "d623cb1cafc197290b9f3202513d55a121154350d1d2edb60da594a8e0dca9d9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241023.0.184651/kopia-20241023.0.184651-linux-arm.tar.gz"
    sha256 "ff691a231e6a90ee997d42728acab1acd42774230795748e56e6405a3e363257"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241023.0.184651/kopia-20241023.0.184651-linux-arm64.tar.gz"
    sha256 "62899b0a8e026a206148acdefad3c476fd1b749df62e1f68ac0844251100ff86"
  end

  def install
    bin.install "kopia"
  end
end
