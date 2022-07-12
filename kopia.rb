# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220712.0.60837"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220712.0.60837/kopia-20220712.0.60837-macOS-x64.tar.gz"
    sha256 "c03365d0a03e5058e3c7d5cfa0c1d7c8b567c2675c8ed57546f9711d30de0793"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220712.0.60837/kopia-20220712.0.60837-macOS-arm64.tar.gz"
    sha256 "3b80ba5d9dd7355463f391866e8ef2ecbdbfeb0fd6cab327304fe6e7f112c0ff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220712.0.60837/kopia-20220712.0.60837-linux-x64.tar.gz"
    sha256 "fd3bbe241ba6fabfc7f7f5db9e0fefa99816e2a031385c9de2855950f009164e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220712.0.60837/kopia-20220712.0.60837-linux-arm.tar.gz"
    sha256 "35d6d26fd0427011edf57e2adaeeb7bf4db8440d5afd86b955ca819c57fda273"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220712.0.60837/kopia-20220712.0.60837-linux-arm64.tar.gz"
    sha256 "2870da191a1d41020573fd3e7aae1fc9ded5995394eb1f419a8dbc75ed65678a"
  end

  def install
    bin.install "kopia"
  end
end
