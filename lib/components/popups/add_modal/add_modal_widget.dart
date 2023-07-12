import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/popups/sub_elements/color_dial/color_dial_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 570.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).lineColor,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: AutoSizeText(
                          'Add a new ${FFAppState().isEditingFolder ? 'folder' : 'file'}',
                          style: FlutterFlowTheme.of(context).headlineSmall,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'ADD_MODAL_COMP_Container_33pqa2yd_ON_TAP');
                                logFirebaseEvent('Container_update_app_state');
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
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.folder_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'fqrx409d' /* Folder */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
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
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'ADD_MODAL_COMP_Container_ouc66vor_ON_TAP');
                                logFirebaseEvent('Container_update_app_state');
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
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.insert_drive_file,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'pzkk6o4a' /* File */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
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
                  height: 24.0,
                  thickness: 2.0,
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
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
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
                                  ],
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
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('ADD_MODAL_COMP_CANCEL_BTN_ON_TAP');
                          logFirebaseEvent('Button_bottom_sheet');
                          Navigator.pop(context);
                        },
                        text: FFLocalizations.of(context).getText(
                          'j7nwknqr' /* Cancel */,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context).bodySmall,
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          hoverColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('ADD_MODAL_COMP__BTN_ON_TAP');
                          var _shouldSetState = false;
                          if (FFAppState().isEditingFolder) {
                            logFirebaseEvent('Button_backend_call');

                            var foldersRecordReference =
                                FoldersRecord.createDoc(currentUserReference!);
                            await foldersRecordReference
                                .set(createFoldersRecordData(
                              owner: currentUserReference,
                              color: FFAppState().selectedColor,
                              name: _model.textController1.text,
                              parentFolder: widget.currentFolder,
                            ));
                            _model.newFolder =
                                FoldersRecord.getDocumentFromData(
                                    createFoldersRecordData(
                                      owner: currentUserReference,
                                      color: FFAppState().selectedColor,
                                      name: _model.textController1.text,
                                      parentFolder: widget.currentFolder,
                                    ),
                                    foldersRecordReference);
                            _shouldSetState = true;
                            logFirebaseEvent('Button_backend_call');

                            await widget.currentFolder!.update({
                              'folders': FieldValue.arrayUnion(
                                  [_model.newFolder!.reference]),
                            });
                          } else {
                            logFirebaseEvent('Button_upload_file_to_firebase');
                            final selectedFiles = await selectFiles(
                              multiFile: false,
                            );
                            if (selectedFiles != null) {
                              setState(() => _model.isDataUploading = true);
                              var selectedUploadedFiles = <FFUploadedFile>[];

                              var downloadUrls = <String>[];
                              try {
                                selectedUploadedFiles = selectedFiles
                                    .map((m) => FFUploadedFile(
                                          name: m.storagePath.split('/').last,
                                          bytes: m.bytes,
                                        ))
                                    .toList();

                                downloadUrls = (await Future.wait(
                                  selectedFiles.map(
                                    (f) async => await uploadData(
                                        f.storagePath, f.bytes),
                                  ),
                                ))
                                    .where((u) => u != null)
                                    .map((u) => u!)
                                    .toList();
                              } finally {
                                _model.isDataUploading = false;
                              }
                              if (selectedUploadedFiles.length ==
                                      selectedFiles.length &&
                                  downloadUrls.length == selectedFiles.length) {
                                setState(() {
                                  _model.uploadedLocalFile =
                                      selectedUploadedFiles.first;
                                  _model.uploadedFileUrl = downloadUrls.first;
                                });
                              } else {
                                setState(() {});
                                return;
                              }
                            }

                            if (_model.uploadedFileUrl != null &&
                                _model.uploadedFileUrl != '') {
                              logFirebaseEvent('Button_haptic_feedback');
                              HapticFeedback.heavyImpact();
                              logFirebaseEvent('Button_backend_call');

                              var filesRecordReference =
                                  FilesRecord.createDoc(currentUserReference!);
                              await filesRecordReference
                                  .set(createFilesRecordData(
                                fileUrl: _model.uploadedFileUrl,
                                owner: currentUserReference,
                                name: _model.textController2.text,
                                created: getCurrentTimestamp,
                                containingFolder: widget.currentFolder,
                                color: FFAppState().selectedColor,
                              ));
                              _model.fileOut = FilesRecord.getDocumentFromData(
                                  createFilesRecordData(
                                    fileUrl: _model.uploadedFileUrl,
                                    owner: currentUserReference,
                                    name: _model.textController2.text,
                                    created: getCurrentTimestamp,
                                    containingFolder: widget.currentFolder,
                                    color: FFAppState().selectedColor,
                                  ),
                                  filesRecordReference);
                              _shouldSetState = true;
                              logFirebaseEvent('Button_backend_call');

                              await widget.currentFolder!.update({
                                'files': FieldValue.arrayUnion(
                                    [_model.fileOut!.reference]),
                              });
                              logFirebaseEvent(
                                  'Button_close_dialog,_drawer,_etc');
                              Navigator.pop(context);
                              logFirebaseEvent('Button_update_app_state');
                              setState(() {});
                            } else {
                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            if (_shouldSetState) setState(() {});
                            return;
                          }

                          logFirebaseEvent('Button_haptic_feedback');
                          HapticFeedback.heavyImpact();
                          logFirebaseEvent('Button_close_dialog,_drawer,_etc');
                          Navigator.pop(context);
                          logFirebaseEvent('Button_update_app_state');
                          setState(() {});
                          if (_shouldSetState) setState(() {});
                        },
                        text: FFAppState().isEditingFolder
                            ? 'Create folder'
                            : 'Upload file',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          hoverColor: FlutterFlowTheme.of(context).tertiary,
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
