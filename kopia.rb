# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250424.0.64229"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250424.0.64229/kopia-20250424.0.64229-macOS-x64.tar.gz"
    sha256 "81baa4420e6e20ba89e436ced85525473a936430d08ad3e94bff882549aeb841"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250424.0.64229/kopia-20250424.0.64229-macOS-arm64.tar.gz"
    sha256 "470d5c45c53abcde93021e53610c628d7a4e35ac30f296f9498a14d033b4e22a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250424.0.64229/kopia-20250424.0.64229-linux-x64.tar.gz"
    sha256 "f7c2858d02f919e0262dd16ca17999672fde1813bf4da64931815710e3568782"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250424.0.64229/kopia-20250424.0.64229-linux-arm.tar.gz"
    sha256 "ba36865c016760085632ffd374fefe8a45c587d0d6db9265e515c7354fc894cd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250424.0.64229/kopia-20250424.0.64229-linux-arm64.tar.gz"
    sha256 "36c47e4d6eafd40f04e29550b3ab7091db6ed262e3c128359b4376d1bda2e890"
  end

  def install
    bin.install "kopia"
  end
end
