# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250524.0.32713"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.32713/kopia-20250524.0.32713-macOS-x64.tar.gz"
    sha256 "417567ea49a14acbbe83bed913e6401cc7a18ea2262a4068f3313f2388ca3064"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.32713/kopia-20250524.0.32713-macOS-arm64.tar.gz"
    sha256 "bf494d112ed526af79155a75ed0312cbf2fa509d411a60f7fee36d21b7d96708"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.32713/kopia-20250524.0.32713-linux-x64.tar.gz"
    sha256 "f11230b109dca462e169e3d91ffa26d257907b82c9d891250c8b987a67944501"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.32713/kopia-20250524.0.32713-linux-arm.tar.gz"
    sha256 "a6d9910d5ec51438a26a4fda5682ddb00f573fc86d4b5dfd5b09bcc5903ea4df"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.32713/kopia-20250524.0.32713-linux-arm64.tar.gz"
    sha256 "b526fc2f78ca08bb8452d4a1b4e1255be45daca61b00946ca8ad82136098cc31"
  end

  def install
    bin.install "kopia"
  end
end
