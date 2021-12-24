
class TipCalculator {
  double tipPercent = 0.0;
  double totalBillAmount = 0.0;

  TipCalculator(this.tipPercent, this.totalBillAmount);

  String getTipAmount() {
    double tipAmount = totalBillAmount * tipPercent;
    return '$tipAmount';
  }
}