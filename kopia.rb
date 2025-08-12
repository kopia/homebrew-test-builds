# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250812.0.11140"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250812.0.11140/kopia-20250812.0.11140-macOS-x64.tar.gz"
    sha256 "f02e4053427fe0f0be6d6c2f173a6562f6a7b4e6b6c072dc44edc7dcfd353b3b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250812.0.11140/kopia-20250812.0.11140-macOS-arm64.tar.gz"
    sha256 "a61c7b2002fda205f64f088795f33af9ee79d41662023c78b1fefe62f95adea3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250812.0.11140/kopia-20250812.0.11140-linux-x64.tar.gz"
    sha256 "b2c7fb4c8e95fe88b9d09be3612bc24a4356ec744cc4cc6defcdbd9a8496f30e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250812.0.11140/kopia-20250812.0.11140-linux-arm.tar.gz"
    sha256 "95fae8dca7f21457517da7ed262acd2748786ffd4479b74afdaca48eb30b806e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250812.0.11140/kopia-20250812.0.11140-linux-arm64.tar.gz"
    sha256 "4d7fbb6b887b5889688ebe9258f1a0517868234225bad5f1a2a2b4b0f5595c9d"
  end

  def install
    bin.install "kopia"
  end
end
