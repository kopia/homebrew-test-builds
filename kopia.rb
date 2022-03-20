# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220319.0.224259"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220319.0.224259/kopia-20220319.0.224259-macOS-x64.tar.gz"
    sha256 "f258af474f1b0c186eff043d39a29de740504cbf4f8bb8ae7067d593c2212065"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220319.0.224259/kopia-20220319.0.224259-macOS-arm64.tar.gz"
    sha256 "da016d60acc52e9e25e7663d875a396e3d7c338f09aa8bb74f8b3c71c3100269"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220319.0.224259/kopia-20220319.0.224259-linux-x64.tar.gz"
    sha256 "69c43c4764656fab4b10956fdbc35ac0acf4c795b2a04a233e9a14717379cc6d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220319.0.224259/kopia-20220319.0.224259-linux-arm.tar.gz"
    sha256 "fc5299a4d7d68198ea398f99ba3f1b5b70878a0d0459db2de860d3273ab4122b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220319.0.224259/kopia-20220319.0.224259-linux-arm64.tar.gz"
    sha256 "d3aa2379343e5d03e64172972de684fd55143aa983c23855e9e240721734177e"
  end

  def install
    bin.install "kopia"
  end
end
