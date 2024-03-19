# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240318.0.221227"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.221227/kopia-20240318.0.221227-macOS-x64.tar.gz"
    sha256 "c38f4b93d5fa61af7475a62ef63f392f8741900f4a72f6b7b791d605d38602f7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.221227/kopia-20240318.0.221227-macOS-arm64.tar.gz"
    sha256 "a16419485549e7762eac332ae995321088c3ad2a320685926a27621d7a661283"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.221227/kopia-20240318.0.221227-linux-x64.tar.gz"
    sha256 "b0bab9d6cb3f4226954c4235eed992e8617de9a31b00979a2cfa180a72b2df5e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.221227/kopia-20240318.0.221227-linux-arm.tar.gz"
    sha256 "11a83d9295ced76621245999968241447b8b92a5cecf81283879b4d8e6f99650"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.221227/kopia-20240318.0.221227-linux-arm64.tar.gz"
    sha256 "89340786e12300f491609fa1aa40d473ae4b253efa9aeb5c4bb5c0d21d980fc6"
  end

  def install
    bin.install "kopia"
  end
end
