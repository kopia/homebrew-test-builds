# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260929.0.3413"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260929.0.3413/kopia-20260929.0.3413-macOS-x64.tar.gz"
    sha256 "d95a617a3ce52a836b9b64c4e903f05840a632825fe38fe5d533de547663ee2e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260929.0.3413/kopia-20260929.0.3413-macOS-arm64.tar.gz"
    sha256 "9372307b518a8ca78c1bb9fb38db33bad435d7a862eedc143fdc40fc31ed62f9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260929.0.3413/kopia-20260929.0.3413-linux-x64.tar.gz"
    sha256 "6b82db5d024c257ce7399204cb93b60065f6110cecc6ede7ddf9d660095d92c3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260929.0.3413/kopia-20260929.0.3413-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260929.0.3413/kopia-20260929.0.3413-linux-arm64.tar.gz"
    sha256 "5d42ee749b5f8b0262c0206f57f626768869513f1d446a7c9629333e3515b5d2"
  end

  def install
    bin.install "kopia"
  end
end
