import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'anunciar_widget.dart' show AnunciarWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class AnunciarModel extends FlutterFlowModel<AnunciarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for SelecionaTipo widget.
  String? selecionaTipoValue;
  FormFieldController<String>? selecionaTipoValueController;
  // State field(s) for SelecionaPelagem widget.
  String? selecionaPelagemValue;
  FormFieldController<String>? selecionaPelagemValueController;
  // State field(s) for InputCor widget.
  FocusNode? inputCorFocusNode;
  TextEditingController? inputCorTextController;
  String? Function(BuildContext, String?)? inputCorTextControllerValidator;
  // State field(s) for InputCorOlhos widget.
  FocusNode? inputCorOlhosFocusNode;
  TextEditingController? inputCorOlhosTextController;
  String? Function(BuildContext, String?)? inputCorOlhosTextControllerValidator;
  // State field(s) for InputIdade widget.
  FocusNode? inputIdadeFocusNode;
  TextEditingController? inputIdadeTextController;
  String? Function(BuildContext, String?)? inputIdadeTextControllerValidator;
  // State field(s) for InputAltura widget.
  FocusNode? inputAlturaFocusNode;
  TextEditingController? inputAlturaTextController;
  final inputAlturaMask = MaskTextInputFormatter(mask: '#.##');
  String? Function(BuildContext, String?)? inputAlturaTextControllerValidator;
  // State field(s) for SelecionaCabelo widget.
  String? selecionaCabeloValue;
  FormFieldController<String>? selecionaCabeloValueController;
  // State field(s) for InputCorCabelo widget.
  FocusNode? inputCorCabeloFocusNode;
  TextEditingController? inputCorCabeloTextController;
  String? Function(BuildContext, String?)?
      inputCorCabeloTextControllerValidator;
  // State field(s) for SelecionaPelo widget.
  String? selecionaPeloValue;
  FormFieldController<String>? selecionaPeloValueController;
  // State field(s) for InputTelefone widget.
  FocusNode? inputTelefoneFocusNode;
  TextEditingController? inputTelefoneTextController;
  String? Function(BuildContext, String?)? inputTelefoneTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AnunciosRecord? saveSuccess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputCorFocusNode?.dispose();
    inputCorTextController?.dispose();

    inputCorOlhosFocusNode?.dispose();
    inputCorOlhosTextController?.dispose();

    inputIdadeFocusNode?.dispose();
    inputIdadeTextController?.dispose();

    inputAlturaFocusNode?.dispose();
    inputAlturaTextController?.dispose();

    inputCorCabeloFocusNode?.dispose();
    inputCorCabeloTextController?.dispose();

    inputTelefoneFocusNode?.dispose();
    inputTelefoneTextController?.dispose();
  }
}
