class CodesenseCli < Formula
    desc "Auto-updating context layer for LLMs — 70% fewer tokens, more accurate answers, cross-repo aware"
    homepage "https://www.npmjs.com/package/codesense-cli"
    url "https://registry.npmjs.org/codesense-cli/-/codesense-cli-0.3.4.tgz"
    sha256 "6e2e771534b4388d5d5d397ea7454d6ab4a7d003e8dd05eab1d0a8c480135f06"
    license "UNLICENSED"
  
    depends_on "node"
  
    def install
      system "npm", "install", *std_npm_args
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  
    test do
      system "#{bin}/codesense", "--version"
    end
  end
  