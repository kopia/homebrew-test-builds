# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231201.0.220707"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231201.0.220707/kopia-20231201.0.220707-macOS-x64.tar.gz"
    sha256 "197431130217e29bd605e1b12e071fe80e1b9460d1fc7cab7eb8e89321c2d470"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231201.0.220707/kopia-20231201.0.220707-macOS-arm64.tar.gz"
    sha256 "b30d014d4206e3dbbe16018205c004b259a95d70627d5aa8a9d6047a2c22d216"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231201.0.220707/kopia-20231201.0.220707-linux-x64.tar.gz"
    sha256 "8dbb80160da752f2aea3d0da1e79467d9e3e5c10c2311056746b6ffcbb3d5330"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231201.0.220707/kopia-20231201.0.220707-linux-arm.tar.gz"
    sha256 "9c2435e77bd7688c8eea13d5de7269912febf4bb6772340c4e70416d05ff8aa9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231201.0.220707/kopia-20231201.0.220707-linux-arm64.tar.gz"
    sha256 "38c2266b7922fc08d72d75598b021fcd4915592a9346186bf836eda9174fa02e"
  end

  def install
    bin.install "kopia"
  end
end
