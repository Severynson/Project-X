class GeneralMethods
  def puts_text
    puts ""
    puts "---List of words that you will meet in tests---"
  end

  def file_reader (file_to_read)
    @@array_with_strings_from_txt = []
    File.open(file_to_read) do |review_file|
      @@array_with_strings_from_txt = review_file.readlines
      puts @@array_with_strings_from_txt
    end
  end
end
GENERAL_METHODS = GeneralMethods.new