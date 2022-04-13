# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220413.0.230508"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220413.0.230508/kopia-20220413.0.230508-macOS-x64.tar.gz"
    sha256 "67c1bf19a3cc72086faf3b7026708170cbf829d6ad21e925e4c5f51e7927af7c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220413.0.230508/kopia-20220413.0.230508-macOS-arm64.tar.gz"
    sha256 "8a88d2bad102ddbdcd1b9fffd252a7bcb1105eae5fc65292abf4a343f1b7cdc2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220413.0.230508/kopia-20220413.0.230508-linux-x64.tar.gz"
    sha256 "03c5a46a47ba9413f890bb622d32eaba41cc0ef64cb24ebb7e6294aac5bcc6c0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220413.0.230508/kopia-20220413.0.230508-linux-arm.tar.gz"
    sha256 "43012e11376a4fd127c9affb1358763aa714b05f91b148211ba5eb6ecfd835ba"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220413.0.230508/kopia-20220413.0.230508-linux-arm64.tar.gz"
    sha256 "5da02b90c95a3e41d19befe09aeb14f9eb3534bade91ca3d1dde2fa69cdd277b"
  end

  def install
    bin.install "kopia"
  end
end
