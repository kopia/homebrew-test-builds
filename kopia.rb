# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240322.0.174339"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240322.0.174339/kopia-20240322.0.174339-macOS-x64.tar.gz"
    sha256 "3ad1c53700665de737676bea740d001321419eda3f72429af8642b43e40159a2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240322.0.174339/kopia-20240322.0.174339-macOS-arm64.tar.gz"
    sha256 "e461823493795dcfbee4b26f5befb22453e644e821999611141a22e48459f99f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240322.0.174339/kopia-20240322.0.174339-linux-x64.tar.gz"
    sha256 "943d09942983598c6425fa5f9169a8c1f9f48637aebfe688e05493e55876d6ad"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240322.0.174339/kopia-20240322.0.174339-linux-arm.tar.gz"
    sha256 "cf778f65d9812553a98dfb12f3f692f50c0104c6ea9405e8fe3aef07bc522beb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240322.0.174339/kopia-20240322.0.174339-linux-arm64.tar.gz"
    sha256 "1230953969f39521e3ae0e4741627ca6c940ee0c2f62f51a928e708eaf8a3724"
  end

  def install
    bin.install "kopia"
  end
end
