# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220910.0.201107"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.201107/kopia-20220910.0.201107-macOS-x64.tar.gz"
    sha256 "f6f6317fa346d1bdc1b897452ee5d259ba9bba2bd47d59f09af5f0faa3d3a31f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.201107/kopia-20220910.0.201107-macOS-arm64.tar.gz"
    sha256 "1ce98a242083dc63f58c35135824d85a43fc80a1eff7ace36a80e39476c52ff2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.201107/kopia-20220910.0.201107-linux-x64.tar.gz"
    sha256 "a43c50fdd33b0dfa8557bae1e86334ef18dc49d9b14bd65d6aec185c5ea0e9fa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.201107/kopia-20220910.0.201107-linux-arm.tar.gz"
    sha256 "dae0d386fe6d05b1a1d7f6f8aec94048b6e1f32cb7411c2795b6f99913b2acfb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.201107/kopia-20220910.0.201107-linux-arm64.tar.gz"
    sha256 "aade008c6084205380dc86747371642e56bcf2813474297d00b7c45fd4bda38e"
  end

  def install
    bin.install "kopia"
  end
end
