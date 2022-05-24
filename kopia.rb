# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220524.0.211555"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220524.0.211555/kopia-20220524.0.211555-macOS-x64.tar.gz"
    sha256 "3abed4734526b8beca45cdc076f17057c945fc940295cc2a857aaa8aec9fa896"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220524.0.211555/kopia-20220524.0.211555-macOS-arm64.tar.gz"
    sha256 "edde8c683c3a4cdac2a777ece1f2aab4dbd1627bf7c1a75299775d7e66747c1e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220524.0.211555/kopia-20220524.0.211555-linux-x64.tar.gz"
    sha256 "8694e78f3d669e6e15aabb766c8801fe44371f57c5a9f523bddcf22912f73980"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220524.0.211555/kopia-20220524.0.211555-linux-arm.tar.gz"
    sha256 "2ad357a88036bf6cee46a5bf2dfd9131338ac9ac0e49d6911b6462f6147b948d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220524.0.211555/kopia-20220524.0.211555-linux-arm64.tar.gz"
    sha256 "fc04f314e683ba4e3446c8259ed8a2bba902254f5b8170db183f8db105549b5f"
  end

  def install
    bin.install "kopia"
  end
end
