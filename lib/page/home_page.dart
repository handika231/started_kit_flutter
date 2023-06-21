import 'package:auto_route/auto_route.dart';
import 'package:belajar_networking/controller/cubit/user_cubit.dart';
import 'package:belajar_networking/model/user_list_model/datum.dart';
import 'package:belajar_networking/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().fetchList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Networking Flutter'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.router.push(const LoginRoute());
            },
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is UserLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                Datum datum = state.userListModel.data![index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(datum.avatar!),
                  ),
                  title: Text(datum.firstName!),
                  subtitle: Text(datum.email!),
                );
              },
              itemCount: state.userListModel.data!.length,
            );
          }
          return const Center(
            child: Text('Error'),
          );
        },
      ),
    );
  }
}
