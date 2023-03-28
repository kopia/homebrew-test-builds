# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230328.0.73625"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.73625/kopia-20230328.0.73625-macOS-x64.tar.gz"
    sha256 "e1628d50bb1305384eb692e2b9bd259fb8cb2f30ac7c9a989f4cd42d4385a537"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.73625/kopia-20230328.0.73625-macOS-arm64.tar.gz"
    sha256 "2f5941fc94f365ff1c7fc3fc15e17ccad5c59f6d28608046f6f125f20cc77a25"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.73625/kopia-20230328.0.73625-linux-x64.tar.gz"
    sha256 "c1c1e8795166c97eb17f12280ee55d7498cc791ca0c692b59074f4852f1553bb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.73625/kopia-20230328.0.73625-linux-arm.tar.gz"
    sha256 "3d1033f4b2380a93b64d0951d1a6f8a4a3e0bd8562f163e1d5f9708f0e1a70ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.73625/kopia-20230328.0.73625-linux-arm64.tar.gz"
    sha256 "37d9fc1ca646a372662a38702962f6b6b47b1760b956f051ed9fc40e7813b0e8"
  end

  def install
    bin.install "kopia"
  end
end
