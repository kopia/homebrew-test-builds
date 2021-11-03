# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.153510"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.153510/kopia-20211103.0.153510-macOS-x64.tar.gz"
    sha256 "4d4f51022291b78f11f12927925dfa6eb545d95f36955cc351978070ef55c275"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.153510/kopia-20211103.0.153510-macOS-arm64.tar.gz"
    sha256 "c08ffdec998680aae44d4b261b6b621d01046d3872f2184060bd7c5714c757d0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.153510/kopia-20211103.0.153510-linux-x64.tar.gz"
    sha256 "646aaba6b81369a9cc3a01a61259027560f976ac7214bb5f6716ea629c2a9e4d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.153510/kopia-20211103.0.153510-linux-arm.tar.gz"
    sha256 "c16fbd5db3fd2bd7886f089ca85e17321236fb2bf0641e022bdd4262babd6d8f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.153510/kopia-20211103.0.153510-linux-arm64.tar.gz"
    sha256 "0bcd9707237d3000ce8ef12bf7bf86198c3f7bb56aebdc3d290ffde1a4a08028"
  end

  def install
    bin.install "kopia"
  end
end
