
class TipCalculator {
  double tipPercent = 0.0;
  double totalBillAmount = 0.0;
  int numberOfSplits = 1;

  TipCalculator(this.tipPercent, this.totalBillAmount, this.numberOfSplits);

  double getTipAmount() {
    double tipAmount = totalBillAmount * tipPercent;
    return tipAmount;
  }

  double getTotalPerPersonAmt() {
    double total = (getTipAmount() + totalBillAmount) / numberOfSplits;
    return total;
  }
}