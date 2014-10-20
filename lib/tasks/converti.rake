require 'spreadsheet'
require 'pry'

namespace :converti do

  desc "Convert xls file"
  task prova: :environment do
    # Spreadsheet.client_encoding = 'UTF-8'
    file = Spreadsheet.open "#{Rails.public_path}/test.xls"
    section = 1
    #select first sheet
    @sheet1 = file.worksheet (section-1)

    @sheet1.each_with_index do |row,index| 

      if is_question?(row)
        q = Question.create(
          quiz_type: "base",
          text: fix_string(row,index),
          section_id: section
          )
        q.id = row[3]
        q.save   
        puts q.text
      end

      if is_answer?(row)
        a = Answer.create(
          text: fix_string(row,index),
          correct: is_correct?(row)
          )
        Question.last.answers << a 
      end
    end
    
  end

  def is_answer?(row)
    row[4..5].all? {|x| x.present?} 
  end

  def is_question?(row)
    row[0..3].all? {|x| x.present?}
  end

  def is_blank?(row)
    row[0..4].all? {|x| x.nil?}
  end

  def fix_string(row,index)
    next_row = @sheet1.row(index+1)
    if next_row.present? && is_blank?(next_row)
      row[5] = row[5] + " " + next_row [5]
    else
      row[5]
    end
  end

  def is_correct?(row)
    if row[2]
      true if row[2].downcase == "x"
    else
      return false
    end
  end

end
