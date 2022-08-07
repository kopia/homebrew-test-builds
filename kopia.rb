# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220806.0.181132"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220806.0.181132/kopia-20220806.0.181132-macOS-x64.tar.gz"
    sha256 "d62a71d5ce958c1f8f42ed1c78a46c8fc97004fa5d0139a09e1a7a461a58a2aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220806.0.181132/kopia-20220806.0.181132-macOS-arm64.tar.gz"
    sha256 "03d3d1cb6363fa06262416c9901bc7e44feb75fdab258b917bc5cc7ea9a70373"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220806.0.181132/kopia-20220806.0.181132-linux-x64.tar.gz"
    sha256 "d44cb2b28c138ac5e2a8de1394c31da7d0d406053a6ad8604d8e7577721ce6c2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220806.0.181132/kopia-20220806.0.181132-linux-arm.tar.gz"
    sha256 "4af0d7a7d93b90ca3a4cfe3a495fb2db16bc560d3eb5efad4d2d2ef44e04d7bd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220806.0.181132/kopia-20220806.0.181132-linux-arm64.tar.gz"
    sha256 "58350a21a07788b243dae6efc9c06894ae93ffc7ad2f2625aed332ab04a983ca"
  end

  def install
    bin.install "kopia"
  end
end
