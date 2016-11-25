contact_list = {"name" => "", "phone_number"=> Array.new}



def ask(question, kind="string")
	print question + ""
	answer_to_question = gets.chomp
	answer_to_question = answer_to_question.to_i if kind == "number"
	return answer_to_question
end

=begin tester for the ask method
pangalan_mo = ask("What's your name? ")
puts pangalan_mo
=end


def add_contact
	contact = {"name" => "", "phone_number"=> Array.new}
	contact["name"] = ask("Enter contact name: ")

	
	answer = ""
	while answer != "n"
		answer = ask("Do you want to add a phone number? (y/n) ")
		

		if answer == "y"
			phone = ask("Enter number: ")
			contact["phone_number"].push(phone)
		end
	end
end












answer = ""
while answer != "n"
  contact_list.push(add_contact())
end