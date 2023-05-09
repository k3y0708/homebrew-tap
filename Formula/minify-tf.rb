class MinifyTf < Formula
  desc "Minify Terraform plan output"
  version "v0.0.1"
  homepage "https://github.com/k3y0708/minify_tf"
  url "https://github.com/k3y0708/minify_tf/releases/download/#{version}/minify_tf.tar.gz"
  sha256 "3b8ed52981b90bb3c373e3116487523b26db5ac825da7ad662116169ce19a57c"
  license "GNU GPLv3"

  def install
    bin.install "minify_tf" => "minify_tf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/minigy-tf version", 1)
  end
end
