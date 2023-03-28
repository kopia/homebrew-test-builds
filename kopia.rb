# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230328.0.44519"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.44519/kopia-20230328.0.44519-macOS-x64.tar.gz"
    sha256 "31ff3537221be9fd12e34a7964e1e7f9e95bf405d91b71c7383073d3287f9379"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.44519/kopia-20230328.0.44519-macOS-arm64.tar.gz"
    sha256 "c1697dcd039bb19df82197fc683cce1f3e068a397e7823aee79b52a6c7b1ac3f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.44519/kopia-20230328.0.44519-linux-x64.tar.gz"
    sha256 "a8db76d78d9f53ba8534b44a34b697a251124d6b476bf41f0b42aac783b740be"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.44519/kopia-20230328.0.44519-linux-arm.tar.gz"
    sha256 "1c08a8c1db017638b70ccaa86551dae15d9ae5ee191410de63dbf2cde55a9bfa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.44519/kopia-20230328.0.44519-linux-arm64.tar.gz"
    sha256 "4bc98373a754541f1e14d061edbef573b33a270e8725b426546de253c180b1f3"
  end

  def install
    bin.install "kopia"
  end
end
