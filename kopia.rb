# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230406.0.224030"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230406.0.224030/kopia-20230406.0.224030-macOS-x64.tar.gz"
    sha256 "c3521209e23464ac2fc746da60beb8ebfad22f5fc589c545726b5be77e69d2f4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230406.0.224030/kopia-20230406.0.224030-macOS-arm64.tar.gz"
    sha256 "c460bf77b1979291422619ec82210e3d47aaada9a89bae959aa4a43665863824"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230406.0.224030/kopia-20230406.0.224030-linux-x64.tar.gz"
    sha256 "94d418c90056af9ae9dfd4816976cbacd3abd8f0a6b7b29485e09112bfa82558"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230406.0.224030/kopia-20230406.0.224030-linux-arm.tar.gz"
    sha256 "2b1812c9ca26e140bf6570be9314eb2decd930ad146ff9cb8b499d591b3dc941"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230406.0.224030/kopia-20230406.0.224030-linux-arm64.tar.gz"
    sha256 "134d7e421313d4f275be0d975655509cfd912aee94f6953fc2f6503f9e462162"
  end

  def install
    bin.install "kopia"
  end
end
