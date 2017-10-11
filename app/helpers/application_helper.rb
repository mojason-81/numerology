module ApplicationHelper
  def people_form_method(person)
    if person.new_record?
      @method = "post"
    else
      @method = "put"
    end
    @method
  end

  def people_form_birthdate(person)
    unless person.new_record?
      if person.birthdate.is_a?(NilClass)
        return person.birthdate
      else
        @birthdate = person.birthdate.strftime("%m-%d-%Y")
        return @birthdate
      end
    end
  end

  def people_form_action(person)
    if person.new_record?
      @action = "/people"
    else
      @action = "/people/#{person.id}"
    end
    @action
  end

  def people_form_class(person)
    if person.new_record?
      @class = "new-person"
    else
      @class = "edit-person"
    end
    @class
  end

  def people_form_id(person)
    if person.new_record?
      @id = "new-person"
    else
      @id = "person-#{person.id}"
    end
    @id
  end
end
