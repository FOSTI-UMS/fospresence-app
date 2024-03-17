import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';
import 'package:fospresence/features/participant/presentation/bloc/participant/participant_bloc.dart';

import '../../../../../core/commons/widgets/confirm_password_dialog.dart';
import '../../../../../core/constants/colors.dart';

class DetailEventSearch extends StatefulWidget {
  const DetailEventSearch({super.key});

  @override
  State<DetailEventSearch> createState() => _DetailEventSearchState();
}

class _DetailEventSearchState extends State<DetailEventSearch> {
  late final TextEditingController _edtSearch;
  late final ParticipantBloc _participantBloc;
  late final TextEditingController _edtPassDialog;
  late final GlobalKey<FormState> _formKeyDialog;
  late final FocusNode _focusNodeDialog;

  bool isSearchTextEmpty = true;

  @override
  void initState() {
    super.initState();
    _participantBloc = BlocProvider.of<ParticipantBloc>(context);
    _edtSearch = TextEditingController();
    _edtPassDialog = TextEditingController();
    _focusNodeDialog = FocusNode();
    _formKeyDialog = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _edtSearch.dispose();
    _edtPassDialog.dispose();
    _focusNodeDialog.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 8, right: 8),
      child: Column(
        children: [
          Container(
            width: 23,
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
          ),
          BlocBuilder<ParticipantBloc, ParticipantState>(
            bloc: _participantBloc,
            builder: (context, state) {
              return _buildRow(state, context);
            },
          ),
        ],
      ),
    );
  }

  Row _buildRow(ParticipantState state, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextField(
            style: textWhite14,
            controller: _edtSearch,
            enabled: !state.isLoading,
            onChanged: (value) {
              isSearchTextEmpty = value.isEmpty;
              _participantBloc
                  .add(ParticipantEvent.searchParticipant(searchText: value));
            },
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(13.0),
                child: SvgPicture.asset("assets/svg/search.svg"),
              ),
              suffixIcon: isSearchTextEmpty
                  ? const SizedBox()
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          isSearchTextEmpty = true;
                        });
                        _edtSearch.clear();
                        _participantBloc.add(
                            const ParticipantEvent.searchParticipant(
                                searchText: ""));
                      },
                      child: const Icon(Icons.close)),
              hintText: "Ketik nama peserta...",
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(width: 0.2, color: lightGrey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(width: 0.2, color: lightGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(width: 0.8, color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(width: 15),
        BlocBuilder<EventBloc, EventState>(
          bloc: BlocProvider.of<EventBloc>(context),
          builder: (context, eventState) {
            return GestureDetector(
              onTap: state.isLoading
                  ? () {}
                  : () => ConfirmPassDialog.showConfirmDialog(
                      context: context,
                      onConfirm: (context) => _participantBloc.add(
                          ParticipantEvent.addParticipantsToExcel(
                              event: eventState.selectedEvent!)),
                      formKey: _formKeyDialog,
                      edtPass: _edtPassDialog,
                      focusNode: _focusNodeDialog),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.2),
                    color: primaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(Icons.download_rounded),
              ),
            );
          },
        ),
        const SizedBox(width: 10)
      ],
    );
  }
}
