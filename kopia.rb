# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240920.0.84504"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240920.0.84504/kopia-20240920.0.84504-macOS-x64.tar.gz"
    sha256 "d86eda898d81a2783476401b1eec3c79a258ce47f842da51fb9837cf1c3edc24"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240920.0.84504/kopia-20240920.0.84504-macOS-arm64.tar.gz"
    sha256 "0092709934370ce464accf5e63b406b465da75bc6e762bdd4339d1b87f2f1a1f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240920.0.84504/kopia-20240920.0.84504-linux-x64.tar.gz"
    sha256 "aa3188ca1caa55a3da0ad24fa81d56748c9a8297c7d120f21cd21f83670add8f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240920.0.84504/kopia-20240920.0.84504-linux-arm.tar.gz"
    sha256 "33ea69de10a6a9b12289b9255625ee528574d630be81ee47c8f1f20b304aa087"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240920.0.84504/kopia-20240920.0.84504-linux-arm64.tar.gz"
    sha256 "d3b4129c531352c35af39e6ce5d558eed2eb6c58b49112fea7e60ed15026fccb"
  end

  def install
    bin.install "kopia"
  end
end
