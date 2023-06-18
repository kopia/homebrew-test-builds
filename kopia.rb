# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230618.0.132624"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230618.0.132624/kopia-20230618.0.132624-macOS-x64.tar.gz"
    sha256 "3491b06e148476c50cfabbbae1a93d2028f344bc61d28d16c911b0c217d54ea5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230618.0.132624/kopia-20230618.0.132624-macOS-arm64.tar.gz"
    sha256 "5ef0058edb16bf1ca5ab70113abe476df12c6befb17989680739ddbbc7f9d91f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230618.0.132624/kopia-20230618.0.132624-linux-x64.tar.gz"
    sha256 "9a190d4a7684dbebbca628228a1bff1286e2ebc9bc25607f468ab4d5363feeed"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230618.0.132624/kopia-20230618.0.132624-linux-arm.tar.gz"
    sha256 "b81fa04bfd797f45db2bb026a204ff7288f1c30f445827c43124202dc5ccfd0e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230618.0.132624/kopia-20230618.0.132624-linux-arm64.tar.gz"
    sha256 "73b6e5871419023e6741e8288c81ffc17a13f4232c1bb2d1ebe8d246d96c6aeb"
  end

  def install
    bin.install "kopia"
  end
end
