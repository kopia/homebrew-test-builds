# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220327.0.54418"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.54418/kopia-20220327.0.54418-macOS-x64.tar.gz"
    sha256 "fbddf9b788e75312f291bfdda9f4734de50e828f28971718f2bec4979284d09a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.54418/kopia-20220327.0.54418-macOS-arm64.tar.gz"
    sha256 "4579bb0a938e9c126c20729b3e6c0ca6749ee967c3a4d7204d0fa9f26864bbe6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.54418/kopia-20220327.0.54418-linux-x64.tar.gz"
    sha256 "9b19ccbe13171a7b4f0a1de0df1e5a6def7f6620cde29c243959367873dbe227"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.54418/kopia-20220327.0.54418-linux-arm.tar.gz"
    sha256 "ee4889083ecc6169472ba017855c0454aa631d051823116c97607c1c9e29b9e9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.54418/kopia-20220327.0.54418-linux-arm64.tar.gz"
    sha256 "afafce550da054677a8a133e8afb76fd1c5a6da57a8b79a6231990369ffcdfff"
  end

  def install
    bin.install "kopia"
  end
end
