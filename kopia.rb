# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220510.0.230849"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220510.0.230849/kopia-20220510.0.230849-macOS-x64.tar.gz"
    sha256 "ee836fffdf699c7bddc855331eb4cb00255beba32700b8ae82bf2302328cea2d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220510.0.230849/kopia-20220510.0.230849-macOS-arm64.tar.gz"
    sha256 "3a5ab51d5ff3f4230638bfb7b9c3b8ca31086c73e9ef414f929732dd1be8e31f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220510.0.230849/kopia-20220510.0.230849-linux-x64.tar.gz"
    sha256 "8062bee554f59853ae4a38881685f24b7ec033660eb6ba412a51fac0f81e82b9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220510.0.230849/kopia-20220510.0.230849-linux-arm.tar.gz"
    sha256 "fc05ac72a3d349be91fbdfa773caf339dc93a57ef7214a78579a298a56f63e5b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220510.0.230849/kopia-20220510.0.230849-linux-arm64.tar.gz"
    sha256 "74c1a6a8fb8e3277b5005fc604ec6dbeecb07450e8a4f3b0282a4081d4cfe102"
  end

  def install
    bin.install "kopia"
  end
end
