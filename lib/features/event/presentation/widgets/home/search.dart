import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/font.dart';
import '../../bloc/event/event_bloc.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({super.key});

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  late final TextEditingController _edtSearch;
  late final EventBloc _eventBloc;
  bool _isSearchTextEmpty = true;

  @override
  void initState() {
    super.initState();
    _eventBloc = BlocProvider.of<EventBloc>(context);
    _edtSearch = TextEditingController();
  }

  @override
  void dispose() {
    _edtSearch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventBloc, EventState>(
      bloc: _eventBloc,
      builder: (context, state) {
        return _buildTextField(state);
      },
    );
  }

  Padding _buildTextField(EventState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        style: inputTextStyle(context),
        controller: _edtSearch,
        enabled: !state.isLoading,
        onChanged: (value) {
          _checkWife(value);
          _isSearchTextEmpty = value.isEmpty;
          _eventBloc.add(EventEvent.searchEvent(searchText: value));
        },
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(13.0),
            child: SvgPicture.asset(
              "assets/svg/search.svg",
              colorFilter:
                  ColorFilter.mode(iconSvgColor(context), BlendMode.srcIn),
            ),
          ),
          suffixIcon: _isSearchTextEmpty
              ? const SizedBox()
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      _isSearchTextEmpty = true;
                    });
                    _edtSearch.clear();
                    _eventBloc
                        .add(const EventEvent.searchEvent(searchText: ""));
                    _eventBloc.add(const EventEvent.showEasterEgg(whose: null));
                  },
                  child: const Icon(Icons.close),
                ),
          hintText: "Ketik nama proker...",
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(width: 0.2, color: outlineColor(context)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(width: 0.2, color: outlineColor(context)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(width: 0.8, color: outlineColor(context)),
          ),
        ),
      ),
    );
  }

  void _checkWife(String value) {
    if (value.toLowerCase() == "istri rafli") {
      _eventBloc.add(const EventEvent.showEasterEgg(whose: Wife.r));
    } else if (value.toLowerCase() == "istri joko") {
      _eventBloc.add(const EventEvent.showEasterEgg(whose: Wife.j));
    } else if (value.toLowerCase() == "istri farhan") {
      _eventBloc.add(const EventEvent.showEasterEgg(whose: Wife.f));
    } else {
      _eventBloc.add(const EventEvent.showEasterEgg(whose: null));
    }
  }
}
