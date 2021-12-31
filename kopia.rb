# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211230.0.182028"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211230.0.182028/kopia-20211230.0.182028-macOS-x64.tar.gz"
    sha256 "4e14bd147e8b0284714f5b113746c8b5b5bbb0f595499f258f36ade843a608bc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211230.0.182028/kopia-20211230.0.182028-macOS-arm64.tar.gz"
    sha256 "d12da32b32030974d74e0b48ef89f0cd22b6a27905a5d5eae492f53e1a950417"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211230.0.182028/kopia-20211230.0.182028-linux-x64.tar.gz"
    sha256 "b847503767833135827f7bb6fdb4271d5f76bd4254b30100f46bfccdf8beebca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211230.0.182028/kopia-20211230.0.182028-linux-arm.tar.gz"
    sha256 "b7832d9ad7fe8a59546417417a948115c5320609990f7fc78a1bb925d211deda"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211230.0.182028/kopia-20211230.0.182028-linux-arm64.tar.gz"
    sha256 "045a729bf178ae26ec15efb5d6aca2f8bb520195ca81718bfc7bce4cce051e09"
  end

  def install
    bin.install "kopia"
  end
end
