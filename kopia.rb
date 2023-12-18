# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231217.0.222128"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231217.0.222128/kopia-20231217.0.222128-macOS-x64.tar.gz"
    sha256 "b51f9a06d6bae06281e69838f9a59080250f489b7442ea292fa1b0dfd01bf535"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231217.0.222128/kopia-20231217.0.222128-macOS-arm64.tar.gz"
    sha256 "299c75128b30cd3831b3bfa2cbf1867d750293e928bcb13cabf1a04cf5d75fae"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231217.0.222128/kopia-20231217.0.222128-linux-x64.tar.gz"
    sha256 "2b1c18223441cde246d03dab88f88df9f5c95c1e2ba0c706b7573f04428a3542"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231217.0.222128/kopia-20231217.0.222128-linux-arm.tar.gz"
    sha256 "e2f3c5e86265c40bcbd12a9c1f30271aa6b6cce601826961f05c4ad80ec768eb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231217.0.222128/kopia-20231217.0.222128-linux-arm64.tar.gz"
    sha256 "e4e1093fce0bce7170b233a472bc42bf474e2ba71c52b3e944d4ed2f1b3c5d5f"
  end

  def install
    bin.install "kopia"
  end
end
