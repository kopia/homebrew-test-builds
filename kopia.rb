# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251125.0.3556"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.3556/kopia-20251125.0.3556-macOS-x64.tar.gz"
    sha256 "44dd0842814be2f8adda410e847650f4dd20122a91325546f280a745479f9d5e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.3556/kopia-20251125.0.3556-macOS-arm64.tar.gz"
    sha256 "d3d6f1d7408112bee722d990515802e17a2b36068ccdd7a7e6a4cae8b8f825d8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.3556/kopia-20251125.0.3556-linux-x64.tar.gz"
    sha256 "01ac73ea78816c5a958ccf27cf92e5eb500115d88cd7d03a65fefa67184e318b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.3556/kopia-20251125.0.3556-linux-arm.tar.gz"
    sha256 "20bdb724d6d50eebf0a5ac9a2138c03ddd7c39e38b13e138836c60a7ea84c23b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.3556/kopia-20251125.0.3556-linux-arm64.tar.gz"
    sha256 "d524bd1354641b473afc9438b4600e9f111a171ba12f5c9bac5cc2f68e6527f5"
  end

  def install
    bin.install "kopia"
  end
end
