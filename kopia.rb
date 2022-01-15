# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220115.0.125456"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220115.0.125456/kopia-20220115.0.125456-macOS-x64.tar.gz"
    sha256 "e0118db5b56280bd8334b0e9cd9e4f1b0dcfad572ef4d56192e5baf78c05bf82"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220115.0.125456/kopia-20220115.0.125456-macOS-arm64.tar.gz"
    sha256 "b59e98bddbb511b143011d26312a9cf5a53138c0f6169a8a3726dfb541599f64"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220115.0.125456/kopia-20220115.0.125456-linux-x64.tar.gz"
    sha256 "e19c5bab46d58619f8265f95528d13b255d506febce57572694801b393b6d364"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220115.0.125456/kopia-20220115.0.125456-linux-arm.tar.gz"
    sha256 "53d7fd0e8ad22a6fe3ff42d94e9e7d6843ec0c9c4ae20a1664ea99ec36fd9df4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220115.0.125456/kopia-20220115.0.125456-linux-arm64.tar.gz"
    sha256 "a0303e760c503c7a2ef508bbe65aeebad4c60430cfb5e52746595ad155c9c939"
  end

  def install
    bin.install "kopia"
  end
end
