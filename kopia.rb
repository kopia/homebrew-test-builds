# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210413.0.80129"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.80129/kopia-20210413.0.80129-macOS-x64.tar.gz"
    sha256 "f1a791f2098b05d20b7914c3a305412a4e38d6c772b5f8a40b03ec1cc1ff2a96"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.80129/kopia-20210413.0.80129-macOS-arm64.tar.gz"
    sha256 "9d9078385648094ad886390fca259390cb9e3a71cd70c070df3843ee9605177a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.80129/kopia-20210413.0.80129-linux-x64.tar.gz"
    sha256 "55363cc0d06c634d9dba981b55c68af3ca9f409f5d637784d9a6840402d817d0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.80129/kopia-20210413.0.80129-linux-arm.tar.gz"
    sha256 "5eca6258f59713b43899b9e4f2a1826d2228edd2cd1a8c90e314abd169c868f4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.80129/kopia-20210413.0.80129-linux-arm64.tar.gz"
    sha256 "8174368a24aea610d751e7ce7675bb5c7bf18d00f3cecfc9ef314975b68def6c"
  end

  def install
    bin.install "kopia"
  end
end
