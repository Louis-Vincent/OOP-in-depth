class Toto
	def foo
		return self.method(:bar).unbind
	end

	def bar
		return self
	end
end

t = Toto.new
f = t.foo()
p f.call() == t # Error: undefined method `call` for `UnboundMethod`
