# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230327.0.160811"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.160811/kopia-20230327.0.160811-macOS-x64.tar.gz"
    sha256 "8ee166d615bc4123af8a087965742f7ce835244e23e54eae81b2875d6ebd2dcb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.160811/kopia-20230327.0.160811-macOS-arm64.tar.gz"
    sha256 "e2f08f0e12d1949b9e8349c08531d12054a0c443afc3cf8b3a0592c725f4aa69"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.160811/kopia-20230327.0.160811-linux-x64.tar.gz"
    sha256 "16195d2cd42f5935f1acb26b5488aee91170d8fbad018a13f369472578aff23e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.160811/kopia-20230327.0.160811-linux-arm.tar.gz"
    sha256 "f7f5145ecdc043b4809b5c1e16a95f0343fd9dc035447b448652c8c091779c31"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.160811/kopia-20230327.0.160811-linux-arm64.tar.gz"
    sha256 "6db8868992ad8452c21cd2a1f1266d05b69f77097978028f9a4c1a8ca0b1e0c8"
  end

  def install
    bin.install "kopia"
  end
end
