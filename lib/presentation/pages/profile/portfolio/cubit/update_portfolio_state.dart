// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'update_portfolio_cubit.dart';

abstract class UpdatePortfolioState extends Equatable {
  const UpdatePortfolioState();

  @override
  List<Object> get props => [];
}

class UpdatePortfolioInitial extends UpdatePortfolioState {}

class UpdatePortfolioIsSuccess extends UpdatePortfolioState {
  String? message;
  UpdatePortfolioIsSuccess({
    this.message,
  });
}

class UpdatePortfolioIsFailed extends UpdatePortfolioState {
  String? message;
  UpdatePortfolioIsFailed({
    this.message,
  });
}

class UpdatePortfolioIsLoading extends UpdatePortfolioState {}