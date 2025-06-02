# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250602.0.44657"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.44657/kopia-20250602.0.44657-macOS-x64.tar.gz"
    sha256 "832b425c34a406e69fadcd4f4b308d2dd01880e76dedb07b29f3a65b5337ab6d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.44657/kopia-20250602.0.44657-macOS-arm64.tar.gz"
    sha256 "78665a555dc6d10096d0aa7194c52777cb1eca45f855689dc432ce2443ea73c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.44657/kopia-20250602.0.44657-linux-x64.tar.gz"
    sha256 "a766a57ff9843d23d1acaa4f42d30698a6f804250fb8237035968862a3ce0ebc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.44657/kopia-20250602.0.44657-linux-arm.tar.gz"
    sha256 "82ab78c92169c20cc43245e6922ff035374902f17fb38032b89c77a2e2f4aceb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.44657/kopia-20250602.0.44657-linux-arm64.tar.gz"
    sha256 "b234faa318d3f889a9a09825e0195c5a3260da65143350b7b57d4bf5315ba6c0"
  end

  def install
    bin.install "kopia"
  end
end
