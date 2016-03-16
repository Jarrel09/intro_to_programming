

def monthly_pymt(loan_amount, interest, years)
  monthly_rate = interest / 12
  months = years * 12
  price = loan_amount * (monthly_rate * (1 + monthly_rate)**months) /
        ((1 + monthly_rate)**months - 1)
  p price
end

monthly_pymt(300_000, 0.04, 30)
