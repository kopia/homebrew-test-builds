# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251111.0.203707"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251111.0.203707/kopia-20251111.0.203707-macOS-x64.tar.gz"
    sha256 "4a1beeaa5b00d0d028c5cd381f9dbc99ad29faad1d3c3e410afce8625dcd9bf2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251111.0.203707/kopia-20251111.0.203707-macOS-arm64.tar.gz"
    sha256 "543db03a6aab1fce0f7dc4df7ce2f3f1a187085244cb4166e5f4bf1cde46bee3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251111.0.203707/kopia-20251111.0.203707-linux-x64.tar.gz"
    sha256 "3b2142ae1a8da7bb4ec34b5289aef88fb5ce1bb4a00cfc35ef39a18123fff2aa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251111.0.203707/kopia-20251111.0.203707-linux-arm.tar.gz"
    sha256 "38639c05cb81bb79d516337d4dabe9956ed66a91b92fd42d4ab5e0fb441f9ba9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251111.0.203707/kopia-20251111.0.203707-linux-arm64.tar.gz"
    sha256 "b3f01f28437094fabd5b6297c1ad144dfcaeb61eb985a4e0c6b22544eff1bbe0"
  end

  def install
    bin.install "kopia"
  end
end
