# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220130.0.202423"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.202423/kopia-20220130.0.202423-macOS-x64.tar.gz"
    sha256 "ed2e9bd43f200e2c6d7528fb644a6f027773c75cd01241c55a318916b0cf04ce"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.202423/kopia-20220130.0.202423-macOS-arm64.tar.gz"
    sha256 "37cbc4abc91e11143092c23d97d42609363421563bc528ef094dfc5717ee8749"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.202423/kopia-20220130.0.202423-linux-x64.tar.gz"
    sha256 "ed6e53f54f3f6060a33fe4ae571854a714682bea6c8f4a694d77590a6e69f1f6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.202423/kopia-20220130.0.202423-linux-arm.tar.gz"
    sha256 "e543ec45662a15f19fd2af80e31cc83fe4ad23e65a2bf28cb3d799e801c815b7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220130.0.202423/kopia-20220130.0.202423-linux-arm64.tar.gz"
    sha256 "c80a57c81ab09f7a8c294aa01a1064477ae97fe1712fb72262b1aec51a9bc375"
  end

  def install
    bin.install "kopia"
  end
end
