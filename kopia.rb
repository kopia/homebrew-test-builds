# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220615.0.131817"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220615.0.131817/kopia-20220615.0.131817-macOS-x64.tar.gz"
    sha256 "d73ce78c7ea884caa6c1d5737809a821d7b475f19a7858545e91ccd1f0c1efc6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220615.0.131817/kopia-20220615.0.131817-macOS-arm64.tar.gz"
    sha256 "7300054150e2f2b083bac4ae248127eb5f1ef01e6deab0cacb0bd2e50f00895e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220615.0.131817/kopia-20220615.0.131817-linux-x64.tar.gz"
    sha256 "dfa05c586d189927be6940574086e664c922502dd52810b187b06ca2f20370bc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220615.0.131817/kopia-20220615.0.131817-linux-arm.tar.gz"
    sha256 "bf6b272d3d8229404b85cf43ce118ebf33e9c551802af7bd895ac96c116addff"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220615.0.131817/kopia-20220615.0.131817-linux-arm64.tar.gz"
    sha256 "291a052ec22b5c59cbb837a688af0929789897c72dc377246973acfc9a243bf4"
  end

  def install
    bin.install "kopia"
  end
end
