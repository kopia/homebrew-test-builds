# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260521.0.14722"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260521.0.14722/kopia-20260521.0.14722-macOS-x64.tar.gz"
    sha256 "9690c8b48de32651fc5431daaf6506f8792b6f949ea595733c79486483e660ee"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260521.0.14722/kopia-20260521.0.14722-macOS-arm64.tar.gz"
    sha256 "5ade64ace1e2a27bc6c1ff2e6d2e4ea23575f36c61bd71b61f663463a94d777d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260521.0.14722/kopia-20260521.0.14722-linux-x64.tar.gz"
    sha256 "edb89e9e5181050ed6c4d77e315d49009aedc13230e6d64dd19565cbfb3c61c4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260521.0.14722/kopia-20260521.0.14722-linux-arm.tar.gz"
    sha256 "ace443498d4aa1f18b34fac8201db4938b0532bc06a33f269961c5407a90fa20"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260521.0.14722/kopia-20260521.0.14722-linux-arm64.tar.gz"
    sha256 "adafe72d1ce41310f60057d269c011b25307e97be900d4313ee845eb30d9a801"
  end

  def install
    bin.install "kopia"
  end
end
