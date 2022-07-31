# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220731.0.100346"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220731.0.100346/kopia-20220731.0.100346-macOS-x64.tar.gz"
    sha256 "b206dd784f56e0300d4045cc580779bf4463fa4663bec73d46ffbf22771688d7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220731.0.100346/kopia-20220731.0.100346-macOS-arm64.tar.gz"
    sha256 "772d4afc5821f8c21bf98830704d909825bf969a03b76a0decddebd1d8f63075"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220731.0.100346/kopia-20220731.0.100346-linux-x64.tar.gz"
    sha256 "dafbcb5d75ad57c93060327a8095dbdde939225300b5fa39c7c6e6929ba060fd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220731.0.100346/kopia-20220731.0.100346-linux-arm.tar.gz"
    sha256 "78a5332dfaee99fcca73bd68fce06b8fac691bf7ffd0a94996892c24d2d5b6f1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220731.0.100346/kopia-20220731.0.100346-linux-arm64.tar.gz"
    sha256 "041ee5aa20ad566bdf1181c91ec63a72f0d39d05adb45496a4e62bc58c0216ee"
  end

  def install
    bin.install "kopia"
  end
end
