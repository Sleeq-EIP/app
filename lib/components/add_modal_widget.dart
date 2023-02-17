import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/color_dial_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'add_modal_model.dart';
export 'add_modal_model.dart';

class AddModalWidget extends StatefulWidget {
  const AddModalWidget({
    Key? key,
    this.currentFolder,
  }) : super(key: key);

  final DocumentReference? currentFolder;

  @override
  _AddModalWidgetState createState() => _AddModalWidgetState();
}

class _AddModalWidgetState extends State<AddModalWidget> {
  late AddModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddModalModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 570,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: FlutterFlowTheme.of(context).lineColor,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                        child: AutoSizeText(
                          'Add a new ${FFAppState().isEditingFolder ? 'folder' : 'file'}',
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'ADD_MODAL_COMP_Container_33pqa2yd_ON_TAP');
                                FFAppState().update(() {
                                  FFAppState().isEditingFolder = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: !FFAppState().isEditingFolder
                                      ? FlutterFlowTheme.of(context)
                                          .primaryBackground
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 12, 12, 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.folder_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'fqrx409d' /* Folder */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family,
                                                color: Theme.of(context)
                                                            .brightness ==
                                                        Brightness.light
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1Family),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'ADD_MODAL_COMP_Container_ouc66vor_ON_TAP');
                                FFAppState().update(() {
                                  FFAppState().isEditingFolder = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FFAppState().isEditingFolder
                                      ? FlutterFlowTheme.of(context)
                                          .primaryBackground
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 1,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 12, 12, 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.insert_drive_file,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'pzkk6o4a' /* File */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1Family),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 24,
                  thickness: 2,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Stack(
                  children: [
                    if (FFAppState().isEditingFolder)
                      Container(
                        width: double.infinity,
                        child: Form(
                          key: _model.formKey2,
                          autovalidateMode: AutovalidateMode.always,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                controller: _model.textController1,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'sn3q0avy' /* Folder name */,
                                  ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'r4n3gt7h' /* [folder name] */,
                                  ),
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                validator: _model.textController1Validator
                                    .asValidator(context),
                              ),
                              wrapWithModel(
                                model: _model.colorDialModel1,
                                updateCallback: () => setState(() {}),
                                child: ColorDialWidget(
                                  allowedColors: [
                                    Color(0xFFFFC6FF),
                                    Color(0xFFBDB2FF),
                                    Color(0xFFA0C4FF),
                                    Color(0xFF9BF6FF),
                                    Color(0xFFCAFFBF),
                                    Color(0xFFFDFFB6),
                                    Color(0xFFFFD6A5),
                                    Color(0xFFFFADAD)
                                  ].toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    if (!FFAppState().isEditingFolder)
                      Container(
                        width: double.infinity,
                        child: Form(
                          key: _model.formKey1,
                          autovalidateMode: AutovalidateMode.always,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                controller: _model.textController2,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'vb8p8k2k' /* File name */,
                                  ),
                                  hintText: FFLocalizations.of(context).getText(
                                    't1jrn4o0' /* [file.pdf] */,
                                  ),
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                validator: _model.textController2Validator
                                    .asValidator(context),
                              ),
                              wrapWithModel(
                                model: _model.colorDialModel2,
                                updateCallback: () => setState(() {}),
                                child: ColorDialWidget(
                                  allowedColors: [
                                    Color(0xFFFFC6FF),
                                    Color(0xFFBDB2FF),
                                    Color(0xFFA0C4FF),
                                    Color(0xFF9BF6FF),
                                    Color(0xFFCAFFBF),
                                    Color(0xFFFDFFB6),
                                    Color(0xFFFFD6A5),
                                    Color(0xFFFFADAD)
                                  ].toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('ADD_MODAL_COMP_CANCEL_BTN_ON_TAP');
                          Navigator.pop(context);
                        },
                        text: FFLocalizations.of(context).getText(
                          'j7nwknqr' /* Cancel */,
                        ),
                        options: FFButtonOptions(
                          height: 40,
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context).bodyText2,
                          elevation: 0,
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          hoverColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          hoverBorderSide: BorderSide(
                            width: 2,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('ADD_MODAL_COMP__BTN_ON_TAP');
                          var _shouldSetState = false;
                          if (FFAppState().isEditingFolder) {
                            final foldersCreateData = createFoldersRecordData(
                              owner: currentUserReference,
                              color: FFAppState().selectedColor,
                              name: _model.textController1.text,
                              parentFolder: widget.currentFolder,
                            );
                            var foldersRecordReference =
                                FoldersRecord.createDoc(currentUserReference!);
                            await foldersRecordReference.set(foldersCreateData);
                            _model.newFolder =
                                FoldersRecord.getDocumentFromData(
                                    foldersCreateData, foldersRecordReference);
                            _shouldSetState = true;

                            final foldersUpdateData1 = {
                              'folders': FieldValue.arrayUnion(
                                  [_model.newFolder!.reference]),
                            };
                            await widget.currentFolder!
                                .update(foldersUpdateData1);
                          } else {
                            final selectedFile =
                                await selectFile(allowedExtensions: ['pdf']);
                            if (selectedFile != null) {
                              setState(() => _model.isMediaUploading = true);
                              FFUploadedFile? selectedUploadedFile;
                              String? downloadUrl;
                              try {
                                selectedUploadedFile = FFUploadedFile(
                                  name:
                                      selectedFile.storagePath.split('/').last,
                                  bytes: selectedFile.bytes,
                                );
                                downloadUrl = await uploadData(
                                    selectedFile.storagePath,
                                    selectedFile.bytes);
                              } finally {
                                _model.isMediaUploading = false;
                              }
                              if (selectedUploadedFile != null &&
                                  downloadUrl != null) {
                                setState(() {
                                  _model.uploadedLocalFile =
                                      selectedUploadedFile!;
                                  _model.uploadedFileUrl = downloadUrl!;
                                });
                              } else {
                                setState(() {});
                                return;
                              }
                            }

                            if (_model.uploadedFileUrl != null &&
                                _model.uploadedFileUrl != '') {
                              HapticFeedback.heavyImpact();

                              final filesCreateData = createFilesRecordData(
                                fileUrl: _model.uploadedFileUrl,
                                owner: currentUserReference,
                                name: _model.textController2.text,
                                created: getCurrentTimestamp,
                                containingFolder: widget.currentFolder,
                                color: FFAppState().selectedColor,
                              );
                              var filesRecordReference =
                                  FilesRecord.createDoc(currentUserReference!);
                              await filesRecordReference.set(filesCreateData);
                              _model.fileOut = FilesRecord.getDocumentFromData(
                                  filesCreateData, filesRecordReference);
                              _shouldSetState = true;

                              final foldersUpdateData2 = {
                                'files': FieldValue.arrayUnion(
                                    [_model.fileOut!.reference]),
                              };
                              await widget.currentFolder!
                                  .update(foldersUpdateData2);
                              _model.soundPlayer ??= AudioPlayer();
                              if (_model.soundPlayer!.playing) {
                                await _model.soundPlayer!.stop();
                              }
                              _model.soundPlayer!.setVolume(1);
                              _model.soundPlayer!
                                  .setAsset('assets/audios/vine-boom.mp3')
                                  .then((_) => _model.soundPlayer!.play());

                              Navigator.pop(context);
                            } else {
                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            if (_shouldSetState) setState(() {});
                            return;
                          }

                          HapticFeedback.heavyImpact();
                          Navigator.pop(context);
                          if (_shouldSetState) setState(() {});
                        },
                        text: FFAppState().isEditingFolder
                            ? 'Create folder'
                            : 'Upload file',
                        options: FFButtonOptions(
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                color: Colors.white,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                              ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          hoverColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          hoverBorderSide: BorderSide(
                            width: 1,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
