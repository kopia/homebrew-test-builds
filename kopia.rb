# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210419.0.234159"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.234159/kopia-20210419.0.234159-macOS-x64.tar.gz"
    sha256 "1eb576d468a726858f0bca9bfff684df8379a0fd8ae34384dd319a8fa8bfab4e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.234159/kopia-20210419.0.234159-macOS-arm64.tar.gz"
    sha256 "e2ecca9f22b45f7064e6801a7287749730da57767b64da0169a03a35fbc289ed"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.234159/kopia-20210419.0.234159-linux-x64.tar.gz"
    sha256 "ae127eaf435932197241815491989042a0707569662a8ea6862525b65ec20716"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.234159/kopia-20210419.0.234159-linux-arm.tar.gz"
    sha256 "081450551d1d6f261ed9736621b6eec1da220cea64d493649bfe02c191b80dd7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.234159/kopia-20210419.0.234159-linux-arm64.tar.gz"
    sha256 "0d99b5f64fcc1b5ae88a2d329aa1801ad21c67a20b7e809f252d66cd64e8f762"
  end

  def install
    bin.install "kopia"
  end
end
