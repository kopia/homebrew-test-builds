# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250427.0.45222"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.45222/kopia-20250427.0.45222-macOS-x64.tar.gz"
    sha256 "ff23b240d621fded4b3b2ef5eecd5a442920775f98f91a920255139b41334f35"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.45222/kopia-20250427.0.45222-macOS-arm64.tar.gz"
    sha256 "929b5749327f96dc50aad4e22348dc4a9de45be9b8b14b4f952eec2652051750"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.45222/kopia-20250427.0.45222-linux-x64.tar.gz"
    sha256 "a6629577fa079c702f65ca77793e91effe878bc20768783a638a325a41e8c841"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.45222/kopia-20250427.0.45222-linux-arm.tar.gz"
    sha256 "315b971d37c474043d1d9efbaad4c24003e2cb0f23c986adffff1fc493d62caa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250427.0.45222/kopia-20250427.0.45222-linux-arm64.tar.gz"
    sha256 "94fe4516bfa71187ad5aff6fe7a7bcdb2448bc06ca5b37c5b481121af01e1509"
  end

  def install
    bin.install "kopia"
  end
end
