# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211017.0.132512"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.132512/kopia-20211017.0.132512-macOS-x64.tar.gz"
    sha256 "aeaf0e26bbc34176f487e72f39b951a837678a9e0fd302b63fe70c9f6ac6a5e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.132512/kopia-20211017.0.132512-macOS-arm64.tar.gz"
    sha256 "d7a0b3e266d51393d1890c332d578a93efeb5930de7637a4e2e16a58dc062f1c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.132512/kopia-20211017.0.132512-linux-x64.tar.gz"
    sha256 "bb87f967f20aafc0902aac94280305306d47e054771a6512311d1e1759196160"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.132512/kopia-20211017.0.132512-linux-arm.tar.gz"
    sha256 "f588f0556928c7e5ad4df06b997512baf952f7e8011f44b5bf01c83dd1be314c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.132512/kopia-20211017.0.132512-linux-arm64.tar.gz"
    sha256 "0258b399b9322a6e2bf5e411b4c5ffee57170f98d4cb3c565718f6bcabf2c400"
  end

  def install
    bin.install "kopia"
  end
end
