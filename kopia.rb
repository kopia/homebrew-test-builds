# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221109.0.222221"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221109.0.222221/kopia-20221109.0.222221-macOS-x64.tar.gz"
    sha256 "b91b1e8bef5ec02277e5441cc79af2314a8f969c4b01cfe6141caddfaa4065dd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221109.0.222221/kopia-20221109.0.222221-macOS-arm64.tar.gz"
    sha256 "f6f188b9b83f3a66574cb9da5dc6f5a7d475d4146f0162a3e40110683e1d5066"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221109.0.222221/kopia-20221109.0.222221-linux-x64.tar.gz"
    sha256 "739f1a87529324587a78e23dbbf8ab60e0266ca1e59c0c5ace20a6e9482584cc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221109.0.222221/kopia-20221109.0.222221-linux-arm.tar.gz"
    sha256 "acfc57bd8dea6c876569fc2ebb0d797453065812d43ca1b50594184a2b6b8d83"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221109.0.222221/kopia-20221109.0.222221-linux-arm64.tar.gz"
    sha256 "d68010bcf17c8ddb32a953f954434b0a3eb20a00dd3aff0d13a9cccd94b8822f"
  end

  def install
    bin.install "kopia"
  end
end
