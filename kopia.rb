# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240313.0.111109"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.111109/kopia-20240313.0.111109-macOS-x64.tar.gz"
    sha256 "6009925b824c436ba9b650568e3605197f430c7e2657a88d8efebf5b453dc23e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.111109/kopia-20240313.0.111109-macOS-arm64.tar.gz"
    sha256 "e41ed812df86c59462ee0bd26fb03289a4331283d2eb60e163cb2bdfa356df8b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.111109/kopia-20240313.0.111109-linux-x64.tar.gz"
    sha256 "523a2a98e343b908a81b275609f8fe10cfdc774731690bc061acf337347b14e0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.111109/kopia-20240313.0.111109-linux-arm.tar.gz"
    sha256 "83cb433734b3bf5949a58e6c0d83cf5e6e5c1bbbc782c3305deb7f9a7be983f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.111109/kopia-20240313.0.111109-linux-arm64.tar.gz"
    sha256 "b632a10e0e186e907a990d525768a7410147556868c0689de76e9566343edfe8"
  end

  def install
    bin.install "kopia"
  end
end
