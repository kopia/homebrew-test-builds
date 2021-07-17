# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.103121"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.103121/kopia-20210717.0.103121-macOS-x64.tar.gz"
    sha256 "fd28b440de72be5ca53298c1a57956d81d2245834c24b65352d8cea7ffa94f36"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.103121/kopia-20210717.0.103121-macOS-arm64.tar.gz"
    sha256 "1b236f3c71e95de669d31a655faeff1e199041aa4a87e343a0b9f98ded242ddc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.103121/kopia-20210717.0.103121-linux-x64.tar.gz"
    sha256 "4a20a5c572101092baaba3632b56aaecb69e96cefbb574f7567ab92cce567bbd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.103121/kopia-20210717.0.103121-linux-arm.tar.gz"
    sha256 "ac5e7744b9364b2f8483d41cabaa26b194943548e89aab2d768bda82c87646ea"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.103121/kopia-20210717.0.103121-linux-arm64.tar.gz"
    sha256 "4c02042e87812ca5bd53327281aa16373e355288e710303ffe74a48d20b024ca"
  end

  def install
    bin.install "kopia"
  end
end
