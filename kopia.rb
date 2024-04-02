# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240401.0.205030"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.205030/kopia-20240401.0.205030-macOS-x64.tar.gz"
    sha256 "2350db7bf1ae19a1a0734ee8449d1fd92d09643d394ff5cce1b80ae976df62e5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.205030/kopia-20240401.0.205030-macOS-arm64.tar.gz"
    sha256 "ec67cf71bce262da23132c9969bece2eac25019fc39773689ebf88be85861652"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.205030/kopia-20240401.0.205030-linux-x64.tar.gz"
    sha256 "785379f9bd9514ba26be484b8b03041077810f25a39fd49a2d933c6185ab697b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.205030/kopia-20240401.0.205030-linux-arm.tar.gz"
    sha256 "0fe992fb3a2a8d78e4a35610986328f83c6c27f973250e2f5279142fe4f3a641"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.205030/kopia-20240401.0.205030-linux-arm64.tar.gz"
    sha256 "a01af7fefdecdc2abaea40d8b2dc07ad41b7b2999d5073529da39d5c08933612"
  end

  def install
    bin.install "kopia"
  end
end
