class ClickbaitValidator<ActiveModel::EachValidator
    # EachValidator is an ActiveRecordmodule
    def validate_each(record,attribute,value)
        #logic
        unless value =~ /(Won't Believe|Secret|Top \d|Guess)/
            record.errors[attribute] << ("Not a clickbait title")
          end
    end
end