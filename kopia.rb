# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250513.0.10352"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.10352/kopia-20250513.0.10352-macOS-x64.tar.gz"
    sha256 "dd9862efa41925b5c736003d437d65a377ab74dd73ccef5041474644a44a0367"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.10352/kopia-20250513.0.10352-macOS-arm64.tar.gz"
    sha256 "23ba94b4edc1c167c9afdc757807c97b3f98fc5dc25b0cf4dbb6f530ec6a7d0e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.10352/kopia-20250513.0.10352-linux-x64.tar.gz"
    sha256 "53737a3f4310ba47dd4148cda35a56832052c621439a79ffc46af5e49de50214"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.10352/kopia-20250513.0.10352-linux-arm.tar.gz"
    sha256 "178e6ee4ff541b8d4fa7001efb8fc9ce41fd7be40db28465cbf587bc821cdd5a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.10352/kopia-20250513.0.10352-linux-arm64.tar.gz"
    sha256 "f75cda19f49f3f44224c5393de7f979d4dbd6d54b25da38da997798b6c8fd084"
  end

  def install
    bin.install "kopia"
  end
end
