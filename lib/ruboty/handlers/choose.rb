require 'sudden_death'

module Ruboty
  module Handlers
    class Choose < Base
      NAMESPACE = "choose"
      on(
        /choose\ (?<list>.+?)\z/,
        description: 'aasdfa',
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
