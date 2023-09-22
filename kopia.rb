# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230922.0.101819"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230922.0.101819/kopia-20230922.0.101819-macOS-x64.tar.gz"
    sha256 "968dbef3281b51de78fa77e9dbf67a524d7d993fe2f02310691301ddb7ad33c6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230922.0.101819/kopia-20230922.0.101819-macOS-arm64.tar.gz"
    sha256 "20e504b9fc91a714ec19b185484601821c338b878a41112994efbe1599a1bb5c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230922.0.101819/kopia-20230922.0.101819-linux-x64.tar.gz"
    sha256 "00fe6ddd873afbda7fec1c782af3d7af5ebaa5373f115fff68329649770afb1b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230922.0.101819/kopia-20230922.0.101819-linux-arm.tar.gz"
    sha256 "7a139dc40fe84b26d825670e2e07955372f2ad731e71f4894cb2e383a66829d9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230922.0.101819/kopia-20230922.0.101819-linux-arm64.tar.gz"
    sha256 "f8f98a17e29a846290aa3e8e760a19661f8a1d972de606bba11209e38a890ca4"
  end

  def install
    bin.install "kopia"
  end
end
