require_relative 'salariedEmployee'
require_relative 'hourlyEmployee'

# alex = SalariedEmployee.new("", 50450)
# alexa = SalariedEmployee.new("Alexa May", -10000)
jane = SalariedEmployee.new('Jane Doe', 50_000)
# alexa.print_pay_stub
# alex.print_pay_stub
jane.print_pay_stub

sergey = HourlyEmployee.janitor('Sergey Titov')
angela = HourlyEmployee.security_guard('Angela Matthews')
ivan = HourlyEmployee.cashier('Ivan Stokes')
sergey.print_pay_stub
angela.print_pay_stub
ivan.print_pay_stub
