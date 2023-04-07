# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230407.0.172205"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230407.0.172205/kopia-20230407.0.172205-macOS-x64.tar.gz"
    sha256 "775b5f70dac9df37b532641b0ca8f30258b3b9aa8eeeac129a4d30a9589f7d28"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230407.0.172205/kopia-20230407.0.172205-macOS-arm64.tar.gz"
    sha256 "ea2909a55b0b06e7707cbb7f55d5a4fa2436f35400405803fa3fb349cfad55db"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230407.0.172205/kopia-20230407.0.172205-linux-x64.tar.gz"
    sha256 "49ee02fc7f7578861bbcf134d6c1f91d40160964aee02cf34a57f69991f4017f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230407.0.172205/kopia-20230407.0.172205-linux-arm.tar.gz"
    sha256 "44697461b23fd383fd73891ae0277fa29e92356719511f1d9c7b6065079c6e4e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230407.0.172205/kopia-20230407.0.172205-linux-arm64.tar.gz"
    sha256 "30a77f8b56566cf4f076c6be50e15187ab361ef48949eb9d6e4cf14bba60aeda"
  end

  def install
    bin.install "kopia"
  end
end
