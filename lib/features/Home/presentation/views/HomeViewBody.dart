import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shopping/core/utilies/Styles.dart';
import '../manager/ProductCubit.dart';
import '../manager/ProductStates.dart';
import '../widgets/ProductTile.dart';

class HomeViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<ProductCubit>().fetchProducts();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('Products',style: Styles.textStyle20,)),
        body: BlocConsumer<ProductCubit, ProductState>(
          listener: (context, state) {
            if (state is ProductError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
            }
          },
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductLoaded) {
              return GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: state.products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return ProductTile(product: state.products[index]);
                },
              );
            } else {
              return const Center(child: Text('No products found'));
            }
          },
        ),
      ),
    );
  }
}
