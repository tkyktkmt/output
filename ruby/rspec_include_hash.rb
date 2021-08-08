describe "Rspec include test" do
  it "include" do
    hash = {:a => 'A', :b => 'B', :c => { :ca => 'CA' }}
    expect(hash).to include(:c => {:ca => 'CA'});                 #
    expect(hash).to include(:a => 'A', :c => {:ca => 'CA'});      # ならべてもいいっぽい
    expect(hash).to_not include(:ca => 'CA');                     # ちゃんと構造みてくれる
    expect(hash).to include(:a);                                  # キーだけでもOK
    expect(hash).to_not include(:d);                              # キーだけでもOK
  end
end