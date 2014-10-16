require 'observer'
require 'subject'

describe Observer do

  let(:observer) { Observer.new }
  let(:subject) { Subject.new }

  it "registers to a subject" do
    subject.register observer

    expect(subject.observers).to eq 1
  end

  it "not registers if nil" do
    subject.register nil

    expect(subject.observers).to eq 0
  end

  it "unregisters from a subject" do
    other_observer = Observer.new

    subject.register observer
    subject.register other_observer
    subject.unregister observer

    expect(subject.observers).to eq 1
  end

end