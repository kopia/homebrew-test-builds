# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210515.0.212154"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.212154/kopia-20210515.0.212154-macOS-x64.tar.gz"
    sha256 "d09361bb615c4525b98d52aaadd8c867e0188220a97f6791663ea3b58ca3cfcb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.212154/kopia-20210515.0.212154-macOS-arm64.tar.gz"
    sha256 "8733835b9997bdcf6716cf112ecce8bc174384511dcef77ea81e0596e9cc82ad"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.212154/kopia-20210515.0.212154-linux-x64.tar.gz"
    sha256 "8e85043e8568fa0d44c32b13378748808e0a5e0d036440018384ed0d048cb70c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.212154/kopia-20210515.0.212154-linux-arm.tar.gz"
    sha256 "a73c481f5f4f181ac5fbf3a0336ee003d4ad12fc4f7924a54bdb4bb3a13a5a0f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210515.0.212154/kopia-20210515.0.212154-linux-arm64.tar.gz"
    sha256 "3dd34750da1f4b7cdfef41712e714239a237b63ed333f1b69f46988ae9e2a14b"
  end

  def install
    bin.install "kopia"
  end
end
