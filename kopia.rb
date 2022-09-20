# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220920.0.140053"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220920.0.140053/kopia-20220920.0.140053-macOS-x64.tar.gz"
    sha256 "0b1e039b5baf3aef8615fc0b747657866ac53c27e6792bd171f81030942b58bd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220920.0.140053/kopia-20220920.0.140053-macOS-arm64.tar.gz"
    sha256 "e2a330ea305a1499f0b7bd426e795d99a6f3df7500c9ec697d9b40e3f1285869"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220920.0.140053/kopia-20220920.0.140053-linux-x64.tar.gz"
    sha256 "bd45c8f12cf39974ba58eae19d813cf1332b44bcf734c59f4d75c1e3940ab3b2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220920.0.140053/kopia-20220920.0.140053-linux-arm.tar.gz"
    sha256 "9ba63ff3846bb445b598a67b2b82a6e9872cbb9b84cfeb2c841072f578d63f6d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220920.0.140053/kopia-20220920.0.140053-linux-arm64.tar.gz"
    sha256 "732b5e14bc0df8ce0278765944834f47d6d5619d2b0d9b353cedbdf8ac54e3f2"
  end

  def install
    bin.install "kopia"
  end
end
