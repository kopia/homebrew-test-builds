# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251120.0.54628"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251120.0.54628/kopia-20251120.0.54628-macOS-x64.tar.gz"
    sha256 "d0a6e33d7654cbd9da412a2e6774a0a424c9ae346a851801afc84a8619e53696"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251120.0.54628/kopia-20251120.0.54628-macOS-arm64.tar.gz"
    sha256 "c4137d66313236d51181c0f1db5f3432f813fd91dcd54e91ae4a85a8e9bb6723"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251120.0.54628/kopia-20251120.0.54628-linux-x64.tar.gz"
    sha256 "f48a94fd5d5b54876280c8a026d9d1bb8c104336d4874d6c3ce6d6d8e07b109e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251120.0.54628/kopia-20251120.0.54628-linux-arm.tar.gz"
    sha256 "3b09002518d1090ebf3aed8d3c912b560673438ece8838bf8bcc869f871ba3c4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251120.0.54628/kopia-20251120.0.54628-linux-arm64.tar.gz"
    sha256 "5094e685c8e2caa048a33b4c5981238349196fc1518208fb2512886f26e40109"
  end

  def install
    bin.install "kopia"
  end
end
