# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240417.0.162358"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240417.0.162358/kopia-20240417.0.162358-macOS-x64.tar.gz"
    sha256 "f4e97582aa512e4d6c4a314e0a2b1445dd6130d6bd066f8dfdc003bc81d819a1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240417.0.162358/kopia-20240417.0.162358-macOS-arm64.tar.gz"
    sha256 "51d20e269df0f9717a2ca194ec468e81ab801b90ed15832a18b5631f4b53ffb7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240417.0.162358/kopia-20240417.0.162358-linux-x64.tar.gz"
    sha256 "f7110cd1ce748fea3483ddacea22c2f83599b69513107f22e4cd5a6a310fb28f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240417.0.162358/kopia-20240417.0.162358-linux-arm.tar.gz"
    sha256 "996ad2f6e2d632126d125a1a222b1b112e27ff184ca81b21470a6bb42938ff05"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240417.0.162358/kopia-20240417.0.162358-linux-arm64.tar.gz"
    sha256 "808a00823461db40102c925bdb09ac955108f32f3196e0ae058583c35168e8e7"
  end

  def install
    bin.install "kopia"
  end
end
