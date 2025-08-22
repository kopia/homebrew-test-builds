# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250822.0.54743"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.54743/kopia-20250822.0.54743-macOS-x64.tar.gz"
    sha256 "4e6b5e491453abd1393c2989d50bacccb64a3e20f6c029f4e2422967ce93bd0d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.54743/kopia-20250822.0.54743-macOS-arm64.tar.gz"
    sha256 "bb9c1f2c8bf13083bfa5173683468ffc10309f601d1ac6e8c697ead82c118561"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.54743/kopia-20250822.0.54743-linux-x64.tar.gz"
    sha256 "83d8dfc5990101dee09f99b5cb8c017341166c2fa7c6c47b5ebcbeaf92d6c0be"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.54743/kopia-20250822.0.54743-linux-arm.tar.gz"
    sha256 "6351e8a31d57adf835d15f3b90bc14f6c51b137bf829c02424b15a2ef2a476b3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.54743/kopia-20250822.0.54743-linux-arm64.tar.gz"
    sha256 "314de390a335a8ca5e1c6b41dca0e086dc3af125201652bf0951a9e10ed1deae"
  end

  def install
    bin.install "kopia"
  end
end
