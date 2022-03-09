# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220308.0.201106"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220308.0.201106/kopia-20220308.0.201106-macOS-x64.tar.gz"
    sha256 "35ae45fa69d224d002904fcd4b613419966aeb5528209892ed024e7c2d3ac97e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220308.0.201106/kopia-20220308.0.201106-macOS-arm64.tar.gz"
    sha256 "6599fced15237e8d51789fb2b65dc9fc368a5e68fbb97b45881b1b755a450700"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220308.0.201106/kopia-20220308.0.201106-linux-x64.tar.gz"
    sha256 "68d560b5d387a7bb0791d66f6ad97fb2860d6304987cdd5c16eca8886cfdfe52"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220308.0.201106/kopia-20220308.0.201106-linux-arm.tar.gz"
    sha256 "bc2c8fe725d6d182b13378e90c7a1a56b5f009ff51ecbb6e8339fcd1df2b9037"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220308.0.201106/kopia-20220308.0.201106-linux-arm64.tar.gz"
    sha256 "637461191ccd020a3394d41640d5d687a80cc00e4367213caa8fbf0c1411364c"
  end

  def install
    bin.install "kopia"
  end
end
