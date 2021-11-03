# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.115849"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.115849/kopia-20211103.0.115849-macOS-x64.tar.gz"
    sha256 "c9fd7137a94661d455ad8e9870f6908efaa1efb48f0b4b6f4a2cda4e9b9873aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.115849/kopia-20211103.0.115849-macOS-arm64.tar.gz"
    sha256 "84fa140e115df7c57404430bc4630cad3ddbd14ef1962966c8c8255d44495313"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.115849/kopia-20211103.0.115849-linux-x64.tar.gz"
    sha256 "0d005008cf6208cf1cec4281d0a093774b10602f3b12e748f4e9dd7e4d845848"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.115849/kopia-20211103.0.115849-linux-arm.tar.gz"
    sha256 "e0c8e48f3059d9221aed9cceb71e346a40d50cc200c82c63b101a92594780c36"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.115849/kopia-20211103.0.115849-linux-arm64.tar.gz"
    sha256 "9cafe410bd76c0c37748f5bef2deb84c05e824680be07444def0f05fecd17750"
  end

  def install
    bin.install "kopia"
  end
end
