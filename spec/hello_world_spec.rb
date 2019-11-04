require 'hello_world'
RSpec.describe HelloWorld do
  skip
  it("say hi") { expect(HelloWorld.hello).to(eq("Hello, World!")) }
end
