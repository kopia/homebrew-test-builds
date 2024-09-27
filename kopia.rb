# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240927.0.54545"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240927.0.54545/kopia-20240927.0.54545-macOS-x64.tar.gz"
    sha256 "317bd71d40037287ca993b8692b8c5517453cfc4a78aef795d8877c0abc3c616"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240927.0.54545/kopia-20240927.0.54545-macOS-arm64.tar.gz"
    sha256 "2352d6226691f60fdea21ca92bbe91edd00daadb0d2d7a3bddf0e6de730907de"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240927.0.54545/kopia-20240927.0.54545-linux-x64.tar.gz"
    sha256 "33462392ad20a2cb54ef41162174270949b006463d6043236296e47f9c72e301"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240927.0.54545/kopia-20240927.0.54545-linux-arm.tar.gz"
    sha256 "263dc48ff3e53a045cfadbdf24ba66d558010f552af3566ef7ddf40a1521a759"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240927.0.54545/kopia-20240927.0.54545-linux-arm64.tar.gz"
    sha256 "c827748b5c45a2f5d55aa77026abd784500e08699b5bd6dfda1dd9383eec3909"
  end

  def install
    bin.install "kopia"
  end
end
