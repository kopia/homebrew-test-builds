# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240318.0.181731"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.181731/kopia-20240318.0.181731-macOS-x64.tar.gz"
    sha256 "122b0850b17f0ac59edcd2caaa374049add4265233ee04e7df5b4bd37a8226d2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.181731/kopia-20240318.0.181731-macOS-arm64.tar.gz"
    sha256 "d82ebb9bea2e6f6beace3af4a24983300a661724837390fb240bd4b287f54d5c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.181731/kopia-20240318.0.181731-linux-x64.tar.gz"
    sha256 "fc951da65968960147611ab215afc4c92a15ea245300ad971db6d1a2c1566640"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.181731/kopia-20240318.0.181731-linux-arm.tar.gz"
    sha256 "6f9641aba449136788eab9a0f900a9d87f2f1658d1cc3e6823a5be2675098e5a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.181731/kopia-20240318.0.181731-linux-arm64.tar.gz"
    sha256 "ff2682379f541c2ae721e51a840bb8b90ab5ed1595afd9a040b7fd5852cc19fb"
  end

  def install
    bin.install "kopia"
  end
end
