# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230311.0.62805"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230311.0.62805/kopia-20230311.0.62805-macOS-x64.tar.gz"
    sha256 "3f430e8b55fe5cdbbedb7079c323d6b0706cd524bf7d9a4fde045b4f70516ef1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230311.0.62805/kopia-20230311.0.62805-macOS-arm64.tar.gz"
    sha256 "06f17a3240dface36cc50bd743560b23c271906959e490095a4be9d7c7fd3f5b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230311.0.62805/kopia-20230311.0.62805-linux-x64.tar.gz"
    sha256 "335043584d340c7d78d4a5dc5c0652cd2cbeb0682d6bdd179d87873bd641608a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230311.0.62805/kopia-20230311.0.62805-linux-arm.tar.gz"
    sha256 "624329bb4596a9a3b158fb1a80e194e7d17d74e5429e0658286a06361ebd57ee"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230311.0.62805/kopia-20230311.0.62805-linux-arm64.tar.gz"
    sha256 "008364826510d9f9653507003f5eafaa1b011b08c80eb47b328ea71d6e0686f1"
  end

  def install
    bin.install "kopia"
  end
end
