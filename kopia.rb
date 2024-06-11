# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240611.0.4953"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240611.0.4953/kopia-20240611.0.4953-macOS-x64.tar.gz"
    sha256 "631f9eb5aa5a7f55eda66bc346a1d5235bf31939eb897d4b6bca55612e1c64e2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240611.0.4953/kopia-20240611.0.4953-macOS-arm64.tar.gz"
    sha256 "94b1bf9def70dd329ca2c9b5bd3eda806ab13912021c2f98672405243d2b2c30"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240611.0.4953/kopia-20240611.0.4953-linux-x64.tar.gz"
    sha256 "20171f7053b2f196a25407c4143d265b09f715b6250bc561cdfd0d4601d78909"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240611.0.4953/kopia-20240611.0.4953-linux-arm.tar.gz"
    sha256 "13f75ca6402b8fb3041f13db208adaeeb85113ebce0d104ff9cf562db12008d6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240611.0.4953/kopia-20240611.0.4953-linux-arm64.tar.gz"
    sha256 "59d242293104fcc5acada06cbb440c21a63b2556527f8e4394e2af933ef2b8cd"
  end

  def install
    bin.install "kopia"
  end
end
