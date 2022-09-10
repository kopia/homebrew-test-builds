# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220910.0.93617"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.93617/kopia-20220910.0.93617-macOS-x64.tar.gz"
    sha256 "da94f4df8b33b2dc9419041e8a24dead50d149d44da3c401ef2462c9b24aabda"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.93617/kopia-20220910.0.93617-macOS-arm64.tar.gz"
    sha256 "2a03985891f286a505f3b78a941f7d076babdd3825c4d600682494540a907178"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.93617/kopia-20220910.0.93617-linux-x64.tar.gz"
    sha256 "fdea887f41ce8101e0f7e362dc430a034e0f58b9dcd5119432bc89766dafe936"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.93617/kopia-20220910.0.93617-linux-arm.tar.gz"
    sha256 "c68624c439a009c54d9997bc2cab2fc144ccd12e09b89c83dc589d95983aad50"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.93617/kopia-20220910.0.93617-linux-arm64.tar.gz"
    sha256 "94721dbff4c0b4154f6d2eff8449911a1bb0196f0de30c8306733baee058cbe3"
  end

  def install
    bin.install "kopia"
  end
end
