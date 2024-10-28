# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241028.0.160429"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.160429/kopia-20241028.0.160429-macOS-x64.tar.gz"
    sha256 "42c33dbcfc692f10f2795a7fd7374125068af7f9138c83e62d833719df4534d9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.160429/kopia-20241028.0.160429-macOS-arm64.tar.gz"
    sha256 "02c7ce054edb0692f96d3bad51f2e4d4d96676bffef61de727787746fbeb864e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.160429/kopia-20241028.0.160429-linux-x64.tar.gz"
    sha256 "4446f22907e801db4eec38d26b1d0170cff437cd0d621bb518721ffbaceae80b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.160429/kopia-20241028.0.160429-linux-arm.tar.gz"
    sha256 "e3fe12583869daaf1c0900593f57bbdb7989729a2ae75ced5321e3247d9ed1b9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.160429/kopia-20241028.0.160429-linux-arm64.tar.gz"
    sha256 "7d19acb51e77127ccc02b3d1b44beeba5a3ea60a6b34d33cde59323f880be01f"
  end

  def install
    bin.install "kopia"
  end
end
