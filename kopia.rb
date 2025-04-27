# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250427.0.51916"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.51916/kopia-20250427.0.51916-macOS-x64.tar.gz"
    sha256 "42ce6e765f7f4fed61c2b70e5314145fb31a3081618c540848a732bdb447ba69"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.51916/kopia-20250427.0.51916-macOS-arm64.tar.gz"
    sha256 "698354fbeab7049a7f2a3f0d1e13285eac388b4d00b21c90879f0058e0433d7d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.51916/kopia-20250427.0.51916-linux-x64.tar.gz"
    sha256 "cb65f87e4686535981bb7a16eb1b6dff65c998eda85b62a12941927b931d7ec0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.51916/kopia-20250427.0.51916-linux-arm.tar.gz"
    sha256 "8e41efdf38b191426a61b75c1145952e4cefde9ee34b33d3d584be04015c4d29"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.51916/kopia-20250427.0.51916-linux-arm64.tar.gz"
    sha256 "deed8c79b1903158571a61babd5a6a393d17072f323e0ab7de5761cceae07961"
  end

  def install
    bin.install "kopia"
  end
end
