class CodesenseCli < Formula
    desc "Auto-updating context layer for LLMs — 70% fewer tokens, more accurate answers, cross-repo aware"
    homepage "https://www.npmjs.com/package/codesense-cli"
    url "https://registry.npmjs.org/codesense-cli/-/codesense-cli-0.3.3.tgz"
    sha256 "130e90f8499021983cf6130aac4d8b4af5289fbb12b1f24687eb47e9d2647d83"
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
  