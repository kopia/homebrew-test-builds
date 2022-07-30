# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220730.0.145901"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.145901/kopia-20220730.0.145901-macOS-x64.tar.gz"
    sha256 "d99a41b74b51fa9747383669f8c7003ae9733dd1f7059670ee34513062c5903a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.145901/kopia-20220730.0.145901-macOS-arm64.tar.gz"
    sha256 "863914365713bf201932220644f868cac4609aeb73f84354f1ccfdb9f348570f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.145901/kopia-20220730.0.145901-linux-x64.tar.gz"
    sha256 "1b459f41a4707ce623061997d8f90ccc3258cec85925802d1edca55e8e58c57f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.145901/kopia-20220730.0.145901-linux-arm.tar.gz"
    sha256 "d967cbc150970ad4f42c62d0439289bdbc2420cad563fe5b68f5a98e813daaa0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.145901/kopia-20220730.0.145901-linux-arm64.tar.gz"
    sha256 "f8cc9ffbd86dad0519294d50cb2129a435913d4b9ad5b2fe1ceb7d928d72762b"
  end

  def install
    bin.install "kopia"
  end
end
