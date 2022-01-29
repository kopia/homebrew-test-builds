# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220129.0.91207"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.91207/kopia-20220129.0.91207-macOS-x64.tar.gz"
    sha256 "36603a3c452fdb624231ed6153e8a32bbdf65d2f92d4d6c69831b4eb68bc7d18"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.91207/kopia-20220129.0.91207-macOS-arm64.tar.gz"
    sha256 "567faf97ac4c074d8191014c8a47b277949d05a4e642ca529a3e86acb7471c5a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.91207/kopia-20220129.0.91207-linux-x64.tar.gz"
    sha256 "7439d38bccf9108d07fdbc5843fb1a11da4f5b3c3d9478dd627379a80e9e5408"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.91207/kopia-20220129.0.91207-linux-arm.tar.gz"
    sha256 "153439a88cf0bfdd62fd1444f8e9c4ce5d61ba69e610e3a0349f3caecb87eef9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220129.0.91207/kopia-20220129.0.91207-linux-arm64.tar.gz"
    sha256 "d1f9142b8ee40830caf77ee0fa3a903f67f27bfe9ab8400c399abd70997820f6"
  end

  def install
    bin.install "kopia"
  end
end
