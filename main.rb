require_relative 'app'

def main
  program = App.new
  program.run
end

main if __FILE__ == $PROGRAM_NAME
