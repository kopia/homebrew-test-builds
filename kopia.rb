# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250909.0.213846"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.213846/kopia-20250909.0.213846-macOS-x64.tar.gz"
    sha256 "ef17da06c6894b521906ff6fc8c9bc0af3a5b298e197192ef882581fa99ad039"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.213846/kopia-20250909.0.213846-macOS-arm64.tar.gz"
    sha256 "8d25373d663f72a974ff76957628eb5074766e66f54e01f6b016366b5a24e253"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.213846/kopia-20250909.0.213846-linux-x64.tar.gz"
    sha256 "cc93fa909da7dea846335692254a2757c9efe91971df8d648e9bd6fffb6e525d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.213846/kopia-20250909.0.213846-linux-arm.tar.gz"
    sha256 "96dbfeb756479c0b3d7218d6bbcba24496c0ebf3cd5788120f19624661e35c55"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.213846/kopia-20250909.0.213846-linux-arm64.tar.gz"
    sha256 "a56860b3e734a347c8f7ccaf0d73a57cf854e77e808cba0feef057d77a12ef90"
  end

  def install
    bin.install "kopia"
  end
end
