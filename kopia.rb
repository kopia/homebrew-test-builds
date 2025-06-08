# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250608.0.61416"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250608.0.61416/kopia-20250608.0.61416-macOS-x64.tar.gz"
    sha256 "308a443c2af460b8519bfbe1cb14c13e180382c1777ffcc964534e0518b9d4a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250608.0.61416/kopia-20250608.0.61416-macOS-arm64.tar.gz"
    sha256 "319ad53a3b350dfd11e9dc0b8d25f74be5431fce7d92aacc65585c75aa1b3321"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250608.0.61416/kopia-20250608.0.61416-linux-x64.tar.gz"
    sha256 "23130ce6adf77aeeba8b90c91cf1f200019ca1dba01848036286ff88aa8176cd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250608.0.61416/kopia-20250608.0.61416-linux-arm.tar.gz"
    sha256 "18b7cde434917340e5f2d3198376b97d3c77bb2465c759958fee52c89b773c99"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250608.0.61416/kopia-20250608.0.61416-linux-arm64.tar.gz"
    sha256 "6d87117a3bdee69da080ea1b02d9967700564e6f9d5980a54fcc4f683ea21516"
  end

  def install
    bin.install "kopia"
  end
end
