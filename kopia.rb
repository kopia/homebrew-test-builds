# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251015.0.22854"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251015.0.22854/kopia-20251015.0.22854-macOS-x64.tar.gz"
    sha256 "618aa25df6c7de236df8f23ed55a61dfeb944af31cf6fbdab425d7120582a405"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251015.0.22854/kopia-20251015.0.22854-macOS-arm64.tar.gz"
    sha256 "e8fb2a2af39d9d6890317f18293a88078bc88c73394e3022b06142aa68ec7696"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251015.0.22854/kopia-20251015.0.22854-linux-x64.tar.gz"
    sha256 "defc7a2fa7634fdb8f27029c7cfad09052bc27bf41014c110877b38c25002eb3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251015.0.22854/kopia-20251015.0.22854-linux-arm.tar.gz"
    sha256 "6ad1c7ea575be7df55fe8e81432e73ce87fc3270c0f80a7d7fc0903a84e4680f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251015.0.22854/kopia-20251015.0.22854-linux-arm64.tar.gz"
    sha256 "b981cc74b7590284f56d5466d04379bc5bb837ecf0af78540ef3949ce24181c8"
  end

  def install
    bin.install "kopia"
  end
end
