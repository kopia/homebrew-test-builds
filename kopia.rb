# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220211.0.172924"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.172924/kopia-20220211.0.172924-macOS-x64.tar.gz"
    sha256 "f8d91a4da57467cee73045201e6491269379de341d514e79eda5cf60939e2e98"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.172924/kopia-20220211.0.172924-macOS-arm64.tar.gz"
    sha256 "861abedcd5e02e672bd1f411bf9fa1c07ccc86c40f729b0ae7bd3c2d93200bc6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.172924/kopia-20220211.0.172924-linux-x64.tar.gz"
    sha256 "cf6c947464d0398258219be8309162dd96124ea4187f7cfa2e4a42851f0cebb6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.172924/kopia-20220211.0.172924-linux-arm.tar.gz"
    sha256 "999beeeb993dda1487bf13a43ffa13eec4eb9270e3872f9527d7eb668fd23cfa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.172924/kopia-20220211.0.172924-linux-arm64.tar.gz"
    sha256 "a8f94bdf004f73e05ae631bfd712da9decd0919c566e6566c93532d8c675bdd0"
  end

  def install
    bin.install "kopia"
  end
end
