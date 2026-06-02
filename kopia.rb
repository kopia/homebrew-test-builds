# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260601.0.235807"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260601.0.235807/kopia-20260601.0.235807-macOS-x64.tar.gz"
    sha256 "ebb84e4d06dca2e6c6a297a70a2932775dd892b38bc1e3f4ddb6770f3786fb7a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260601.0.235807/kopia-20260601.0.235807-macOS-arm64.tar.gz"
    sha256 "f8585081b7977309e65c78c6c574d569c1f72da57b10d06f320e9e499d4d5ae5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260601.0.235807/kopia-20260601.0.235807-linux-x64.tar.gz"
    sha256 "7e742a4bd7ef73458dfd0b6372afd8af86dc8a5a89fe31b0d6c509cf54f72d59"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260601.0.235807/kopia-20260601.0.235807-linux-arm.tar.gz"
    sha256 "800f205bc96cd8344da7a2514fcb7f6dd70a090abd6908fa91c3bd9b122c41d3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260601.0.235807/kopia-20260601.0.235807-linux-arm64.tar.gz"
    sha256 "7c3fd7a8be80d86cdfd6fdc988cbb9c70e631410bb4435d042f55795f384beef"
  end

  def install
    bin.install "kopia"
  end
end
