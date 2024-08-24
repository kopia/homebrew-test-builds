# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240823.0.223114"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.223114/kopia-20240823.0.223114-macOS-x64.tar.gz"
    sha256 "ea2bf862a11705a1c8ddcedde952b7a858ddabe77a0c1a2d770df1a638aff87b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.223114/kopia-20240823.0.223114-macOS-arm64.tar.gz"
    sha256 "4a827b44a67e4c805489a6de99bcae15b0f497bb161ad398a8631249663802b8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.223114/kopia-20240823.0.223114-linux-x64.tar.gz"
    sha256 "2d23441a1ce78bb8cea3f1e95a50ecb32bb520698643c262106ef8dd370f3a35"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.223114/kopia-20240823.0.223114-linux-arm.tar.gz"
    sha256 "6e2431622ac50ce8a5ee3512f310c64bf475ce44f34f477fde5892e879c80a83"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240823.0.223114/kopia-20240823.0.223114-linux-arm64.tar.gz"
    sha256 "629892f3ed037821eced2129b8127162ebdc96884749afbea4eccc267c5cf22c"
  end

  def install
    bin.install "kopia"
  end
end
