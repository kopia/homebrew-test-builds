# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250918.0.12703"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.12703/kopia-20250918.0.12703-macOS-x64.tar.gz"
    sha256 "cb18521efd7b8318f52cf3417072d43f0a114917b4668a7a8dbc23a048b3a271"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.12703/kopia-20250918.0.12703-macOS-arm64.tar.gz"
    sha256 "700a34bdec836a0c12e8faf1907e329ca52a45eb6b820cd2eeb0de6a84267846"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.12703/kopia-20250918.0.12703-linux-x64.tar.gz"
    sha256 "7823fe38e7afb3860c48be746f1ebd59121920938b44084d50870f570eb3d546"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.12703/kopia-20250918.0.12703-linux-arm.tar.gz"
    sha256 "b996063046b6612204e4aed2fd12f3ed1f41defffdfcb827d7b70f7414887212"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.12703/kopia-20250918.0.12703-linux-arm64.tar.gz"
    sha256 "b97e28ef7dd0c53969e620334d6c1aa87bc4e3f7ee13049095230035756b3ac1"
  end

  def install
    bin.install "kopia"
  end
end
