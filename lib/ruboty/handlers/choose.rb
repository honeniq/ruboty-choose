require 'sudden_death'

module Ruboty
  module Handlers
    class Choose < Base
      NAMESPACE = "choose"
      on(
        /choose\ (?<list>.+?)\z/,
        description: 'Choose one from given words. Words must be separated by space. (ex. \'robuty choose apple orange grape\')',
        name: 'choose'
      )

      def choose(message)
        pp 'choose'
        list = message[:list].split(' ')
        text = list.sample.sudden_death
        message.reply(text)
      end
    end
  end
end
