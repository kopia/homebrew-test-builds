# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220516.0.63757"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.63757/kopia-20220516.0.63757-macOS-x64.tar.gz"
    sha256 "539c575315a23085f7cb54272b5fc97343ae12a327807bf70b18d9db1086c031"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.63757/kopia-20220516.0.63757-macOS-arm64.tar.gz"
    sha256 "d99c2d12cbb28f16d45d3bb64e463392ccc045df25860e465cd66532c80379f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.63757/kopia-20220516.0.63757-linux-x64.tar.gz"
    sha256 "a414d95e61f4ee6137d3549dbfbec853f488097f9f2b94503213b5d0d7cb38d2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.63757/kopia-20220516.0.63757-linux-arm.tar.gz"
    sha256 "978a6523b524219ddb3689cb0450f07725dc955496b2ee4cc5016fe42f349dde"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.63757/kopia-20220516.0.63757-linux-arm64.tar.gz"
    sha256 "58b28bf71a9f07f484bae14d9d165aaaeab273a8d28a633129ecb53bf763cd18"
  end

  def install
    bin.install "kopia"
  end
end
