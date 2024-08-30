import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnunciosRecord extends FirestoreRecord {
  AnunciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "pelagem" field.
  String? _pelagem;
  String get pelagem => _pelagem ?? '';
  bool hasPelagem() => _pelagem != null;

  // "corPelagem" field.
  String? _corPelagem;
  String get corPelagem => _corPelagem ?? '';
  bool hasCorPelagem() => _corPelagem != null;

  // "corDosOlhos" field.
  String? _corDosOlhos;
  String get corDosOlhos => _corDosOlhos ?? '';
  bool hasCorDosOlhos() => _corDosOlhos != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  bool hasIdade() => _idade != null;

  // "altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  bool hasAltura() => _altura != null;

  // "cabelo" field.
  String? _cabelo;
  String get cabelo => _cabelo ?? '';
  bool hasCabelo() => _cabelo != null;

  // "corDoCabelo" field.
  String? _corDoCabelo;
  String get corDoCabelo => _corDoCabelo ?? '';
  bool hasCorDoCabelo() => _corDoCabelo != null;

  // "pele" field.
  String? _pele;
  String get pele => _pele ?? '';
  bool hasPele() => _pele != null;

  // "imageAnuncio" field.
  String? _imageAnuncio;
  String get imageAnuncio => _imageAnuncio ?? '';
  bool hasImageAnuncio() => _imageAnuncio != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  void _initializeFields() {
    _tipo = snapshotData['tipo'] as String?;
    _pelagem = snapshotData['pelagem'] as String?;
    _corPelagem = snapshotData['corPelagem'] as String?;
    _corDosOlhos = snapshotData['corDosOlhos'] as String?;
    _idade = castToType<int>(snapshotData['idade']);
    _altura = castToType<double>(snapshotData['altura']);
    _cabelo = snapshotData['cabelo'] as String?;
    _corDoCabelo = snapshotData['corDoCabelo'] as String?;
    _pele = snapshotData['pele'] as String?;
    _imageAnuncio = snapshotData['imageAnuncio'] as String?;
    _phone = snapshotData['phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios');

  static Stream<AnunciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnunciosRecord.fromSnapshot(s));

  static Future<AnunciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnunciosRecord.fromSnapshot(s));

  static AnunciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnunciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnunciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnunciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnunciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnunciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnunciosRecordData({
  String? tipo,
  String? pelagem,
  String? corPelagem,
  String? corDosOlhos,
  int? idade,
  double? altura,
  String? cabelo,
  String? corDoCabelo,
  String? pele,
  String? imageAnuncio,
  String? phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tipo': tipo,
      'pelagem': pelagem,
      'corPelagem': corPelagem,
      'corDosOlhos': corDosOlhos,
      'idade': idade,
      'altura': altura,
      'cabelo': cabelo,
      'corDoCabelo': corDoCabelo,
      'pele': pele,
      'imageAnuncio': imageAnuncio,
      'phone': phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnunciosRecordDocumentEquality implements Equality<AnunciosRecord> {
  const AnunciosRecordDocumentEquality();

  @override
  bool equals(AnunciosRecord? e1, AnunciosRecord? e2) {
    return e1?.tipo == e2?.tipo &&
        e1?.pelagem == e2?.pelagem &&
        e1?.corPelagem == e2?.corPelagem &&
        e1?.corDosOlhos == e2?.corDosOlhos &&
        e1?.idade == e2?.idade &&
        e1?.altura == e2?.altura &&
        e1?.cabelo == e2?.cabelo &&
        e1?.corDoCabelo == e2?.corDoCabelo &&
        e1?.pele == e2?.pele &&
        e1?.imageAnuncio == e2?.imageAnuncio &&
        e1?.phone == e2?.phone;
  }

  @override
  int hash(AnunciosRecord? e) => const ListEquality().hash([
        e?.tipo,
        e?.pelagem,
        e?.corPelagem,
        e?.corDosOlhos,
        e?.idade,
        e?.altura,
        e?.cabelo,
        e?.corDoCabelo,
        e?.pele,
        e?.imageAnuncio,
        e?.phone
      ]);

  @override
  bool isValidKey(Object? o) => o is AnunciosRecord;
}
