# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220607.0.183708"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220607.0.183708/kopia-20220607.0.183708-macOS-x64.tar.gz"
    sha256 "137ce7a9d8e8115f070fb868f4d122d969865971bf6dd4621a404693a025c053"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220607.0.183708/kopia-20220607.0.183708-macOS-arm64.tar.gz"
    sha256 "471175d084cd6a61f25f3070cd7c0ad5f54a5964fa895af4076a9739e4cfe2fc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220607.0.183708/kopia-20220607.0.183708-linux-x64.tar.gz"
    sha256 "d944f3d6fa2bff686fe99663a3df6e2fdc5bdd7d12393e2ef8442e9d1a68dd0e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220607.0.183708/kopia-20220607.0.183708-linux-arm.tar.gz"
    sha256 "c84ef35178132efdcb916d747fc946502640b5171e4a0728bc9211e909ab3c0e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220607.0.183708/kopia-20220607.0.183708-linux-arm64.tar.gz"
    sha256 "0a6bb02b78f3ebd839ce80952dc2444841886c969507bb3d486ba2d18a6f0e82"
  end

  def install
    bin.install "kopia"
  end
end
