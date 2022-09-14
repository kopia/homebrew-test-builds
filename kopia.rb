# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220914.0.94802"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.94802/kopia-20220914.0.94802-macOS-x64.tar.gz"
    sha256 "6f67c53972d1a64426a32e51e0854fd7b3253eef680338f97ec04fd404a888b4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.94802/kopia-20220914.0.94802-macOS-arm64.tar.gz"
    sha256 "2df67a725cea4dbc30e48f7942df94e361f943b59bfae4d9bd816c07ee82af9b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.94802/kopia-20220914.0.94802-linux-x64.tar.gz"
    sha256 "089e90cbcbd09ea778387f2036c813206de52f48ebe791e1b6912decdf1dda3b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.94802/kopia-20220914.0.94802-linux-arm.tar.gz"
    sha256 "5c713fd6f250cd122ba667f73a90406a92fbd458bfa608adbb45dff609290ce8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220914.0.94802/kopia-20220914.0.94802-linux-arm64.tar.gz"
    sha256 "b56cfa940b90a75eb3c7c14426a7178de392de6ac0f5b97bcc1a79193b16737e"
  end

  def install
    bin.install "kopia"
  end
end
