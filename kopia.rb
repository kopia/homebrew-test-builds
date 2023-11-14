# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231113.0.212207"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231113.0.212207/kopia-20231113.0.212207-macOS-x64.tar.gz"
    sha256 "d6a863e5b6151155893058735327f055600fcfb3380012bcbba04e0b213303ac"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231113.0.212207/kopia-20231113.0.212207-macOS-arm64.tar.gz"
    sha256 "46522998b40ae8d2e46978acb657950fa3294416a0ad61b8c573719a9ad2bee1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231113.0.212207/kopia-20231113.0.212207-linux-x64.tar.gz"
    sha256 "a18836bd66748c70c91bbeb408b01562be41182e1ef7e0ba31c6eaa83bd9bfb6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231113.0.212207/kopia-20231113.0.212207-linux-arm.tar.gz"
    sha256 "b6f3008aa9ea70eb61ec93ccd9cc6747c85c5f2f04f9764bc27f47bb0f4365a5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231113.0.212207/kopia-20231113.0.212207-linux-arm64.tar.gz"
    sha256 "fcd9e222522da3efb2200607257775a6553321360f573bce158b1900cd451584"
  end

  def install
    bin.install "kopia"
  end
end
