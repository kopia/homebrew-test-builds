# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240406.0.51011"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240406.0.51011/kopia-20240406.0.51011-macOS-x64.tar.gz"
    sha256 "8b3e1e297548a99b6d94aa6a26a05d33d5d6431894eb4988b010de373400b586"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240406.0.51011/kopia-20240406.0.51011-macOS-arm64.tar.gz"
    sha256 "93142dd93f6dce1a51a928d3561701ab904a44febc495c27bae83736f1cbde7b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240406.0.51011/kopia-20240406.0.51011-linux-x64.tar.gz"
    sha256 "bfea0ca349cec1ae21cd634ab37c7ea8cd0256bc1fd75574901bc7336b48e674"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240406.0.51011/kopia-20240406.0.51011-linux-arm.tar.gz"
    sha256 "8122c2c166756d67e2c46c547d90b212642ba4fb7c1299ab1a6b5bba9f94c70e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240406.0.51011/kopia-20240406.0.51011-linux-arm64.tar.gz"
    sha256 "be656ce3339279680de2773ab617291a74fe98ce3f73ba7550a979daa8708196"
  end

  def install
    bin.install "kopia"
  end
end
