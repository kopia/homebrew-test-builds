# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220113.0.113151"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.113151/kopia-20220113.0.113151-macOS-x64.tar.gz"
    sha256 "ab974df16537a961a5cbf20d37c33c9fb5468f32ce5e7c70b30d873b83bf4e23"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.113151/kopia-20220113.0.113151-macOS-arm64.tar.gz"
    sha256 "81957347eaf86096858665f245193bc32183a7f1bc595a313ecbc769a95a051e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.113151/kopia-20220113.0.113151-linux-x64.tar.gz"
    sha256 "fb03fcb63498fa4f84b56825994a50ec226da811dab2691d6abf7933d1a38afb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.113151/kopia-20220113.0.113151-linux-arm.tar.gz"
    sha256 "30031479389747fc661a0be9dbc331e7f3e12844864c95cf8d62d674fbc44de1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.113151/kopia-20220113.0.113151-linux-arm64.tar.gz"
    sha256 "894d7c8e841b2ab1eba889f17feb3c4eb4153055901b5e3008ef02b78b7dfbbd"
  end

  def install
    bin.install "kopia"
  end
end
