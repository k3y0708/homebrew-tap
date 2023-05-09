class Otter < Formula
  desc "Otter is a small shell written in go"
  version "v0.0.2"
  homepage "https://github.com/k3y0708/otter"
  url "https://github.com/k3y0708/otter/archive/refs/tags/#{version}.tar.gz"
  sha256 "f44841e57759a4cdfe694282b7ded456d14e1bb12df5aa8fef08b5c34825027d"
  license "GNU GPLv3"
  head "https://github.com/k3y0708/otter.git"
  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    cd "src" do
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end
  end
end
