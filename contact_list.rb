def ask(question, kind="string")
  print question + ""
  answer_to_question = gets.chomp
  answer_to_question = answer_to_question.to_i if kind == "number"
  return answer_to_question
end


def add_contact
  contact = {"name" => "", "phone_numbers" => []}
  contact["name"] = ask("What is the person's name?")
  answer = ""
  while answer != "n"
    answer = ask("Do you want to add a phone number? (y/n)")
    if answer == "y"
      phone = ask("Enter a phone number:")
      contact["phone_numbers"].push(phone)
    end
  end
end

contact_list = {"name" => "", "phone_number"=> Array.new}

answer = ""
while answer != "n"
  contact_list.push(add_contact())
end