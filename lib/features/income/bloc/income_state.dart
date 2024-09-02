part of 'income_bloc.dart';

abstract class IncomeState {}

class IncomeInitial extends IncomeState {}

class IncomeLoadedState extends IncomeState {
  final List<Income> incomes;
  IncomeLoadedState({required this.incomes});
}
