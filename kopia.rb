# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230727.0.113040"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230727.0.113040/kopia-20230727.0.113040-macOS-x64.tar.gz"
    sha256 "ccb30cf59251e492bbee90bfbacf98f29d17a9d2495045c71594998d7493cc96"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230727.0.113040/kopia-20230727.0.113040-macOS-arm64.tar.gz"
    sha256 "f946f29333415024924c39762e77514b700554b77d0ee54149c0cc79d945adeb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230727.0.113040/kopia-20230727.0.113040-linux-x64.tar.gz"
    sha256 "6556a2b8b370b5f5b88bb97d5f457648485e6576c47f7969dcd4a9bed4538963"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230727.0.113040/kopia-20230727.0.113040-linux-arm.tar.gz"
    sha256 "90777aee3ef966af8e4205e4b4771807396130d81eb1c4bfe9296afd83513b57"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230727.0.113040/kopia-20230727.0.113040-linux-arm64.tar.gz"
    sha256 "fc0351d01b72a2bf4b02764e2cedb5fc105c0f44b8c2b2136bb923eddcc50216"
  end

  def install
    bin.install "kopia"
  end
end
