# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210827.0.42218"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210827.0.42218/kopia-20210827.0.42218-macOS-x64.tar.gz"
    sha256 "6ff29d26edcac772b4e20c321c71590bf3ed20a8bbab5a1e66fd51b293329f28"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210827.0.42218/kopia-20210827.0.42218-macOS-arm64.tar.gz"
    sha256 "97c05356a5eb54ed9a625c86c8bba97fae8c7ee3bf31078c617c79c56e76d9d5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210827.0.42218/kopia-20210827.0.42218-linux-x64.tar.gz"
    sha256 "29791102fa302cbc971020eb7dd376fb231da423bcc24115d05c556c919c8eb5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210827.0.42218/kopia-20210827.0.42218-linux-arm.tar.gz"
    sha256 "034fa208279370a791888ed81107f7d76d26c4d41738f94c945f7b0509ec5d28"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210827.0.42218/kopia-20210827.0.42218-linux-arm64.tar.gz"
    sha256 "0477ac1a17193a265fef0bff5a4d04f3a396ea97596d0c52da49374caa608ba9"
  end

  def install
    bin.install "kopia"
  end
end
