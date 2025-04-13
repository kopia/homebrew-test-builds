# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250413.0.40803"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250413.0.40803/kopia-20250413.0.40803-macOS-x64.tar.gz"
    sha256 "56409c5f9547564685deaae0a236e425c27779c51bc19ddd9745fc6e5e307c60"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250413.0.40803/kopia-20250413.0.40803-macOS-arm64.tar.gz"
    sha256 "0a363400999b3a4b9a9d66f82600733b9764e9c182dd4f99802d1d3fc049a788"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250413.0.40803/kopia-20250413.0.40803-linux-x64.tar.gz"
    sha256 "8f9a6d6faaa6be8a5d07b23e034fcd5e4ca195e2f1efc603a693200624bd3d18"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250413.0.40803/kopia-20250413.0.40803-linux-arm.tar.gz"
    sha256 "b9a117595165cd8f9aaf74790139e529e671d7937528f3f50ce520cc248725af"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250413.0.40803/kopia-20250413.0.40803-linux-arm64.tar.gz"
    sha256 "b495ed38c3fae29fd5618bf7831a4c128fda30619608ac6de7c173d96aaf0341"
  end

  def install
    bin.install "kopia"
  end
end
