# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250529.0.60749"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.60749/kopia-20250529.0.60749-macOS-x64.tar.gz"
    sha256 "44a84ba8cadb8a79fe87372e72f5772ad17d37618322e3ee40bd7286a7796689"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.60749/kopia-20250529.0.60749-macOS-arm64.tar.gz"
    sha256 "5e852c85b84b558da4e49f5feb19380b1e917e7afb06e1c86b4a21da80805022"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.60749/kopia-20250529.0.60749-linux-x64.tar.gz"
    sha256 "7b233a51c1dd81655523342af0f85a0a8895b9d36affe5cef6666790466be96a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.60749/kopia-20250529.0.60749-linux-arm.tar.gz"
    sha256 "106a91a07d908fdb40693763ccd1cd082929938da8d46da7b45dd224d2189ead"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.60749/kopia-20250529.0.60749-linux-arm64.tar.gz"
    sha256 "3df1bb85584eee6c3f01df75ca63ffb2d882d6bcc8b6ecd56688a147c8513f38"
  end

  def install
    bin.install "kopia"
  end
end
