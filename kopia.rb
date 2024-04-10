# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240409.0.223750"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240409.0.223750/kopia-20240409.0.223750-macOS-x64.tar.gz"
    sha256 "89b96cf01bc90865d10e709a7387802209dbf8c582b7efe19a660e85af616289"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240409.0.223750/kopia-20240409.0.223750-macOS-arm64.tar.gz"
    sha256 "fb637d9325be1cad0efbef525012468cfa14d4a2b1ffc711cb446e89691fb058"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240409.0.223750/kopia-20240409.0.223750-linux-x64.tar.gz"
    sha256 "dfe640e995a7671f098a5a76c4f4cd388845852b789ddc246677b189f81e6b21"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240409.0.223750/kopia-20240409.0.223750-linux-arm.tar.gz"
    sha256 "56e9477a19bc2817af18fb5ba083d9c3dcf9887eefe58501cd5bcbb5dc1b9d52"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240409.0.223750/kopia-20240409.0.223750-linux-arm64.tar.gz"
    sha256 "1fbc971cac3add728de90e4cdd7f8cfc818c4686803d76db62593787ba1b4a15"
  end

  def install
    bin.install "kopia"
  end
end
