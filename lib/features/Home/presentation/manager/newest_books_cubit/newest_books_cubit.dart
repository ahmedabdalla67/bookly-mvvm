import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repo/repo_home.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async{
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure){
      emit(NewestBooksfailure(failure.errMessage));
    }, (books){
      emit(NewestBooksSuccess(books));
    });
  }
}
