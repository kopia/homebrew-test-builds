# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230916.0.121650"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.121650/kopia-20230916.0.121650-macOS-x64.tar.gz"
    sha256 "18d78bec82282ba9734137f05c60193c3aea5744f9cba8e5cc206bdc05e64944"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.121650/kopia-20230916.0.121650-macOS-arm64.tar.gz"
    sha256 "e303f1dded130732b5d5d169033fd7e93dff85c52bef6c17d7c2c7ce6c330e8a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.121650/kopia-20230916.0.121650-linux-x64.tar.gz"
    sha256 "5dd0f658b6eb359e1a262338f5d3f853e69e12b12e59fda4f4b04a087f07319b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.121650/kopia-20230916.0.121650-linux-arm.tar.gz"
    sha256 "b0867160782e8cb1e718d171585e78e0ef00588846940837458e0d016469c44b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.121650/kopia-20230916.0.121650-linux-arm64.tar.gz"
    sha256 "30ac0cde94053d6166ee7593bf32b661aa0500b99ce6ebfc6c1c51875c8bbf8d"
  end

  def install
    bin.install "kopia"
  end
end
