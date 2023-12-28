# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231227.0.222930"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231227.0.222930/kopia-20231227.0.222930-macOS-x64.tar.gz"
    sha256 "f9927ff0dd435a986d854052d641a4499a348fffa76861432ab6f326582d7a4c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231227.0.222930/kopia-20231227.0.222930-macOS-arm64.tar.gz"
    sha256 "770b7e661992f397b8c6392c6c62102389d321a927749a8dc491427b97faf19c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231227.0.222930/kopia-20231227.0.222930-linux-x64.tar.gz"
    sha256 "faff45c01a84e213c9a03bc61c89a308fe7c83ab9c0f8df46789daebb82ffd27"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231227.0.222930/kopia-20231227.0.222930-linux-arm.tar.gz"
    sha256 "20ef46569b7769ca1d2284ef4102804d23fc6124ecbac4128868d1f88de57c77"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231227.0.222930/kopia-20231227.0.222930-linux-arm64.tar.gz"
    sha256 "c5b5e91078e841058ee5cbb28aa6d4114bcba2276d49ec0872e3dbe1dec9fc6d"
  end

  def install
    bin.install "kopia"
  end
end
