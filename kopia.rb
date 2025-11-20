# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251120.0.34059"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251120.0.34059/kopia-20251120.0.34059-macOS-x64.tar.gz"
    sha256 "0067146a325c2f97a1bdd47428ce1ddf03e300cde01a103fc58ec01ca6584989"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251120.0.34059/kopia-20251120.0.34059-macOS-arm64.tar.gz"
    sha256 "1bacf2ff04437f34dd36bcd87a07d933f29a0c7c62a2b589263646929ff6771f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251120.0.34059/kopia-20251120.0.34059-linux-x64.tar.gz"
    sha256 "7054f6ea18ea49a68f8b47fef1b8227e6a1a6e0deb7fefb441c40e58702e3365"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251120.0.34059/kopia-20251120.0.34059-linux-arm.tar.gz"
    sha256 "854ecca9c9cc783adfc7ae8c96734683aceab990545b05d0fc26d1bb95fbba9b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251120.0.34059/kopia-20251120.0.34059-linux-arm64.tar.gz"
    sha256 "1404d04f2e625242abcbae5bbebae1c714f0f76407ad5fc6453bd5a1072a141f"
  end

  def install
    bin.install "kopia"
  end
end
