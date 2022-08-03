# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220802.0.211346"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220802.0.211346/kopia-20220802.0.211346-macOS-x64.tar.gz"
    sha256 "aa6977a417794c68d93df8884a63b1460377a04fd54d127e88f6153a93ab87a0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220802.0.211346/kopia-20220802.0.211346-macOS-arm64.tar.gz"
    sha256 "6239df375bff638c7d5f29caed5547192db63f22e42abf0d247acc23d7d8d1dd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220802.0.211346/kopia-20220802.0.211346-linux-x64.tar.gz"
    sha256 "456b804f9c50ef570147992b3021ad86d1bfd18458eed3d7bf801ea6211be7c5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220802.0.211346/kopia-20220802.0.211346-linux-arm.tar.gz"
    sha256 "1926cea1b59ec2b72ad68eaf72d4df298868eba3ef850b6a9ded3cc3bbc6400b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220802.0.211346/kopia-20220802.0.211346-linux-arm64.tar.gz"
    sha256 "17a8ea3cf5c292f05ae0c53800ca1f23cf1a27ca855ebbc4291948639858ccd4"
  end

  def install
    bin.install "kopia"
  end
end
