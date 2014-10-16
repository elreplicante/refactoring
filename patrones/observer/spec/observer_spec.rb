require 'observer'
require 'subject'

describe Observer do
  it "registers to a subject" do
    observer = Observer.new
    subject = Subject.new

    subject.register observer

    expect(subject.observers).to eq 1
  end

  it "unregisters from a subject" do
    observer = Observer.new
    other_observer = Observer.new
    subject = Subject.new

    subject.register observer
    subject.register other_observer
    subject.unregister observer

    expect(subject.observers).to eq 1
  end

end