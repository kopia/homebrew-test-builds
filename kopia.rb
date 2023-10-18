# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231017.0.223354"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231017.0.223354/kopia-20231017.0.223354-macOS-x64.tar.gz"
    sha256 "6928bb16a182b1b06f23e1a7388d888fcf2689fb8681dbb11e1f7f623de322a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231017.0.223354/kopia-20231017.0.223354-macOS-arm64.tar.gz"
    sha256 "116da98bec5673aca36eb91ff3cdb37bf9156480425d66825fa0d7e611533a73"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231017.0.223354/kopia-20231017.0.223354-linux-x64.tar.gz"
    sha256 "16e1a044aa8138627c8f483fab0fa36f4f6b7e514bae129bf67528a301213f3d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231017.0.223354/kopia-20231017.0.223354-linux-arm.tar.gz"
    sha256 "98b30e0f574900917cc17ec54ad3098918050f83a948628afa9dae4a78572bed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231017.0.223354/kopia-20231017.0.223354-linux-arm64.tar.gz"
    sha256 "ffe3cbc100482a979444c1dda35581fe9ec97bd3c6dce5098fc15916f2f46f42"
  end

  def install
    bin.install "kopia"
  end
end
