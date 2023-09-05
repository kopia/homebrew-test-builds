# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230904.0.195144"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230904.0.195144/kopia-20230904.0.195144-macOS-x64.tar.gz"
    sha256 "02c070b7b6fdcefbced846764393506edd3652a991ffba75aef38dbb4bc418be"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230904.0.195144/kopia-20230904.0.195144-macOS-arm64.tar.gz"
    sha256 "53973234576c4c27add5589b30b3036fcb720054509ab3307b82e460de2be1d6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230904.0.195144/kopia-20230904.0.195144-linux-x64.tar.gz"
    sha256 "85be40ee94a8c14de4aafd170167a141093c334b839283bc21a4a2efa7fd3699"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230904.0.195144/kopia-20230904.0.195144-linux-arm.tar.gz"
    sha256 "104015a3e704cd97e244c92dbe1a9e0e91c7369ed5a7b4826dca265b2d8f16de"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230904.0.195144/kopia-20230904.0.195144-linux-arm64.tar.gz"
    sha256 "1f516baeca4ed1b2dabed0dfbe095e71619a7dd9d73c2074ba5094e6db52d4ab"
  end

  def install
    bin.install "kopia"
  end
end
