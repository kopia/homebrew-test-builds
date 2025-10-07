# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251007.0.192830"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251007.0.192830/kopia-20251007.0.192830-macOS-x64.tar.gz"
    sha256 "5140c975a4f03835f31bcf2ba4346296a88f2b5e121cd7c8d2050cca68b34038"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251007.0.192830/kopia-20251007.0.192830-macOS-arm64.tar.gz"
    sha256 "697e6e61d9513c3582c8dd4535e3f7ac315f505a056ad98da16c698ac2787f62"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251007.0.192830/kopia-20251007.0.192830-linux-x64.tar.gz"
    sha256 "d20861ac7839881a786eff8828f93cb4e45ea95f6e2a156b67885c2154b26dd5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251007.0.192830/kopia-20251007.0.192830-linux-arm.tar.gz"
    sha256 "3018ee8dd1b407449dad45cff080cd12cbf299d88f38f1ad36b4e61b2e91023b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251007.0.192830/kopia-20251007.0.192830-linux-arm64.tar.gz"
    sha256 "16c0b46b0ba3d244b556b0618ded3d4eb35346f0d786f028173dcf31975bacbd"
  end

  def install
    bin.install "kopia"
  end
end
