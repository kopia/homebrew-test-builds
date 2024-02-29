# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240229.0.1023"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240229.0.1023/kopia-20240229.0.1023-macOS-x64.tar.gz"
    sha256 "253621ff5017637ebd46ac3d582eb06316a22ddc711b712e3c925907791c6e86"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240229.0.1023/kopia-20240229.0.1023-macOS-arm64.tar.gz"
    sha256 "6f62a963629d357dee257a9401c1e7d375e1601b33f78b7dfadb417946aed8a6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240229.0.1023/kopia-20240229.0.1023-linux-x64.tar.gz"
    sha256 "a387aece87906cec373459aa2f8adb2b064937fa874393d36bc19bd3ec047b35"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240229.0.1023/kopia-20240229.0.1023-linux-arm.tar.gz"
    sha256 "f08425954dba280b80b143b294ba1719e59dee71f6ba3a846c451d372d65122d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240229.0.1023/kopia-20240229.0.1023-linux-arm64.tar.gz"
    sha256 "ad650af2e53145f4c387f7e5c4e924a79c24e84eca0709ec0def16bd7147647c"
  end

  def install
    bin.install "kopia"
  end
end
