=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Loan amount, annual percentage rate, loan duration
-  Output: monthly interest rate, loan duration in months, monthly payment
---
**Problem Domain:**
---
**Implicit Requirements:**
1. APR must be converted to monthly interest rate
2. Make sure loan duration is the correct unit
3. Interest rate should be in decimal form
---
**Clarifying Questions:**
1. What format should inputs be in?
2. Working with months or years with loan duration?
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs:
  -  Output:
-  Example 2
  -  Inputs:
  -  Output:
---
_Your Test Cases:_
-  Example 3
  -  Inputs:
  -  Output:
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
---
Algorithm
---------
START
Given loan amount, APR, and loan duration in months from user.

SET loan_amount = loan amount
SET monthly_int_rate = APR/1200
SET loan_duration = loan duration
SET monthly_payment = algorithm from LS
PRINT monthly_payment
END

Code
----
=end

require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(num)
  num == num.to_i.to_s
end

def float?(num)
  num == num.to_f.to_s
end

def number?(num)
  (integer?(num) || float?(num)) && num.to_f > 0
end

loop do
  prompt(MESSAGES['welcome'])

  loan_amount = nil
  loop do
    prompt(MESSAGES['loan'])
    loan_amount = Kernel.gets().chomp()

    if loan_amount.empty?() || number?(loan_amount)
      break
    else
      prompt("Hmm... that doesn't look like a valid loan amount.")
    end
  end

  apr = nil
  loop do
    prompt(MESSAGES['APR'])
    apr = Kernel.gets().chomp()

    if apr.empty?() || number?(apr)
      break
    else
      prompt("Hmm... that doesn't look like a valid APR.")
    end
  end

  loan_duration_months = nil
  loop do
    prompt(MESSAGES['loan_duration'])
    loan_duration_months = Kernel.gets().chomp()

    if loan_duration_months.empty?() || number?(loan_duration_months)
      break
    else
      prompt("Hmm... that doesn't look like a valid loan duration.")
    end
  end

  loan_amount = loan_amount.to_f
  apr = apr.to_f
  loan_duration_months = loan_duration_months.to_i

  monthly_int_rate = apr / 1200.0

  prompt(MESSAGES['calculating'])
  secondary_algo = (1 - (1 + monthly_int_rate)**(-loan_duration_months))
  monthly_payment = loan_amount * (monthly_int_rate / secondary_algo)

  prompt("Your monthly payment is $#{format('%.2f', monthly_payment)}")

  prompt(MESSAGES['try_again'])

  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['thank_you'])
