# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210402.0.195817"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.195817/kopia-20210402.0.195817-macOS-x64.tar.gz"
    sha256 "54ffad7fcfd9ea923f21e0515afbf18efb05ed7677c5a8f850706fd15b3ea267"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.195817/kopia-20210402.0.195817-macOS-arm64.tar.gz"
    sha256 "c30ef19207e06d3fee6cbc4ad6d17e9bf02105a730620e32aa055aeac77b8e53"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.195817/kopia-20210402.0.195817-linux-x64.tar.gz"
    sha256 "a0edd8478d66b54353dff95f8f7e30026540891ee6089323f3d7fde7a37a824e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.195817/kopia-20210402.0.195817-linux-arm.tar.gz"
    sha256 "b64ad7e4906083c4e4a56191a7937b4033966835444b0fe1e23b2db511e69b0f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.195817/kopia-20210402.0.195817-linux-arm64.tar.gz"
    sha256 "bb957b6dc28417a0f46f611864a1ddbf7fa6bb80128616e4b9496ab36aa14c3f"
  end

  def install
    bin.install "kopia"
  end
end
