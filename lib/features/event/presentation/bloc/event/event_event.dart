part of 'event_bloc.dart';

@freezed
class EventEvent with _$EventEvent {
  const factory EventEvent.getEvents() = _GetEvents;
  const factory EventEvent.createEventPressed({required EventEntity event}) =
      _CreateEventPressed;
  const factory EventEvent.editEventPressed({required EventEntity event}) =
      _EditEventPressed;
  const factory EventEvent.deleteEventPressed({required EventEntity event}) =
      _DeteleEventPressed;
  const factory EventEvent.selectedEventPressed({required EventEntity event}) =
      _SelectedEventPressed;
  const factory EventEvent.searchEvent({required String searchText}) =
      _SearchEvent;
  const factory EventEvent.showEasterEgg({required Wife? whose}) = _ShowEasterEgg;
}
