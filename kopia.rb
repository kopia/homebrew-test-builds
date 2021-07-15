# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210715.0.112713"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.112713/kopia-20210715.0.112713-macOS-x64.tar.gz"
    sha256 "1a20bb9dac9eb31f3e05527fa362e9abbf77cc2322d5a3f815cfaad6e1a3f63a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.112713/kopia-20210715.0.112713-macOS-arm64.tar.gz"
    sha256 "4b47ca7f0004a297080a670bc47f71338556639a603a5d483ecafffada63e85f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.112713/kopia-20210715.0.112713-linux-x64.tar.gz"
    sha256 "c8d45d67174d06c4a1f3deb73c8efe23e17a6d29511c1292a3132e30e28159c9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.112713/kopia-20210715.0.112713-linux-arm.tar.gz"
    sha256 "6cd382daa6594137186b38bb75532b4badc32427fc57f197dfc07297c8ac41ac"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.112713/kopia-20210715.0.112713-linux-arm64.tar.gz"
    sha256 "5f5690e3846862249d3e680010a17ea6bc87a8947577e92e709d813b36f2996b"
  end

  def install
    bin.install "kopia"
  end
end
