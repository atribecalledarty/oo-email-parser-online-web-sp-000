# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :list_of_emails, :string
  
  def initialize(string)
    @string = string
    
  end
  
  def parse
    @list_of_emails = @string.split(" ")
    @list_of_emails = @list_of_emails.collect {|email| email.chomp(",")}
  end
end