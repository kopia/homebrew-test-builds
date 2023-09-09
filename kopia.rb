# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230908.0.173657"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230908.0.173657/kopia-20230908.0.173657-macOS-x64.tar.gz"
    sha256 "cff40d191f7d8bd204d17b061ba05f1f1d1437935abaee4ab3a44a5e91d077fe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230908.0.173657/kopia-20230908.0.173657-macOS-arm64.tar.gz"
    sha256 "07884ce6345afb5739850fc6a777e876d7bb4ab0fc854d2243d06aa9c51fae14"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230908.0.173657/kopia-20230908.0.173657-linux-x64.tar.gz"
    sha256 "672df8ab9b3ba5be24cf77446958769135d78a18ae173c0f13c2c0a6840b90c3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230908.0.173657/kopia-20230908.0.173657-linux-arm.tar.gz"
    sha256 "afc878ea7a2488eec927765874622ee1dd0162090a58965a3b7140d6dd884d90"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230908.0.173657/kopia-20230908.0.173657-linux-arm64.tar.gz"
    sha256 "b7a62d5570daef5200a208beb262bced17fa5ca91d89ec59b1f24ec19e20d4fe"
  end

  def install
    bin.install "kopia"
  end
end
