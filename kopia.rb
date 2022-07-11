# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220711.0.72653"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220711.0.72653/kopia-20220711.0.72653-macOS-x64.tar.gz"
    sha256 "4ca10a621204885251d2f18494f1068abec9ec16da8b66d1e369398c227e732f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220711.0.72653/kopia-20220711.0.72653-macOS-arm64.tar.gz"
    sha256 "297950f4a901f2de79f988f1f62738c3ea058aad82fd5fddc8b0ba8f1bb9524f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220711.0.72653/kopia-20220711.0.72653-linux-x64.tar.gz"
    sha256 "4c4733136b853e06cfc0159a49f190297c289e3cdaea8e935cce5c20311a7e6c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220711.0.72653/kopia-20220711.0.72653-linux-arm.tar.gz"
    sha256 "98f9a9b3c7976db75e7d16e62af5da25915c3b59d3c3b54880609cff8c1c5e23"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220711.0.72653/kopia-20220711.0.72653-linux-arm64.tar.gz"
    sha256 "8c58898334bed2776a04c1b1387d0d0701f8f137229e8734680ca17a1035971d"
  end

  def install
    bin.install "kopia"
  end
end
