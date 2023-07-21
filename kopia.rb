# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230720.0.214826"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.214826/kopia-20230720.0.214826-macOS-x64.tar.gz"
    sha256 "b95a346a8ef830a390dfb8665fcbe523db47c90e7b8f671d5498ac0bbd50d401"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.214826/kopia-20230720.0.214826-macOS-arm64.tar.gz"
    sha256 "71d4b0a3cde45c08760a7996df7a5ee05a183661980c1123d14b6ad21fdb88da"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.214826/kopia-20230720.0.214826-linux-x64.tar.gz"
    sha256 "50cee0fe964e26ee892a426f8525468fa663ee17de84ce2d915c2d820a401172"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.214826/kopia-20230720.0.214826-linux-arm.tar.gz"
    sha256 "ed6002bf66e19d77cb3b87923064b6ef6bb6d4f6d48c4444234d913f6c70a8f9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.214826/kopia-20230720.0.214826-linux-arm64.tar.gz"
    sha256 "c8821d81e81dd431565569e06d59508bcf40c14898c8368307d9d85c0ba468b8"
  end

  def install
    bin.install "kopia"
  end
end
