.class public Lcom/lge/browser/OmaDrmHandlerV2;
.super Landroid/os/AsyncTask;
.source "OmaDrmHandlerV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_DD_POPUP:Ljava/lang/String; = "com.lge.browser.download.DD_POPUP"

.field public static final ACTION_ROAP_POPUP:Ljava/lang/String; = "com.lge.browser.download.ROAP_POPUP"

.field public static final ACTION_USER_CONSENT_POPUP:Ljava/lang/String; = "com.lge.browser.download.USER_CONSENT_POPUP"

.field private static final BUFFER_SIZE:I = 0x1000

.field public static final DDHANDLERV1_JOBTYPE_PROCESS_MULTIPART:I = 0x64

.field public static final DDHANDLERV1_JOBTYPE_PROCESS_ROAP:I = 0x66

.field public static final DDHANDLERV1_JOBTYPE_PROCESS_ROAP_TRIGGER_XML:I = 0x65

.field private static final DOWNLOAD_DEFAULT_DL_SUBDIR:Ljava/lang/String; = "/download"

.field public static final DOWNLOAD_DESCRIPTOR_MIMETYPE:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field public static final DOWNLOAD_FAIL:I = -0x1

.field public static final DOWNLOAD_FAIL_DD_PARSING_ERROR:I = -0x6

.field public static final DOWNLOAD_FAIL_DRM_PROCESS_ERROR:I = -0x5

.field public static final DOWNLOAD_FAIL_HTTP_DATA_ERROR:I = -0x4

.field public static final DOWNLOAD_FAIL_HTTP_HEADER_ERROR:I = -0x3

.field public static final DOWNLOAD_FAIL_INSUFFICIENT_MEM:I = -0x7

.field public static final DOWNLOAD_FAIL_USER_CANCELED:I = -0x2

.field public static final DOWNLOAD_MULTIPART_RELATED_MIMETYPE:Ljava/lang/String; = "multipart/related"

.field public static final DOWNLOAD_OMA_DRM_ODF:Ljava/lang/String; = "application/vnd.oma.drm.dcf"

.field public static final DOWNLOAD_OMA_DRM_ODF_EXTENSION:Ljava/lang/String; = ".odf"

.field public static final DOWNLOAD_OMA_DRM_ROAP_PDU_XML:Ljava/lang/String; = "application/vnd.oma.drm.roap-pdu+xml"

.field public static final DOWNLOAD_OMA_DRM_ROAP_TRIGGER_XML:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+xml"

.field public static final DOWNLOAD_OMA_DRM_RO_XML:Ljava/lang/String; = "application/vnd.oma.drm.ro+xml"

.field public static final DOWNLOAD_SUCCESS:I = 0x1

.field public static final DOWNLOAD_WAIT:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Download (DRM2)"

.field public static final POPUP_YN_DRM_USER_CONSENT_POPUP:I = 0xa

.field public static final RESULT_FAIL:Ljava/lang/String; = "false"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "true"


# instance fields
.field private mActivity:Lcom/android/browser/BrowserActivity;

.field private mContentUri:Landroid/net/Uri;

.field public mCookieData:Ljava/lang/String;

.field private mDDConfirmed:I

.field private mDDParser:Lcom/lge/browser/DDParser;

.field private mDownloadDbID:I

.field private mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

.field private mDrmuserConsentConfirmed:I

.field private mFileName:Ljava/lang/String;

.field private mInstallNotifyCode:Ljava/lang/String;

.field private mInstallNotifyURI:Ljava/lang/String;

.field private mIsDrm20CD:Z

.field private mJobType:I

.field private mMpHandler:Lcom/lge/browser/MultipartRelatedHandler;

.field private mNeedProcessInit:Z

.field private mNextURI:Ljava/lang/String;

.field private mOmaDrmHandlerV2ID:I

.field private mPostData:Landroid/lge/lgdrm/DrmDldRequest;

.field public mReferer:Ljava/lang/String;

.field private mRoapCanceledbyUser:Z

.field private mRoapCntToFakeUI:I

.field private mRoapTriggerInDD:Z

.field private mStrError:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;I)V
    .registers 6
    .parameter "activity"
    .parameter "jobType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 104
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    .line 105
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    .line 106
    iput v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mJobType:I

    .line 107
    iput v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mOmaDrmHandlerV2ID:I

    .line 110
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mUri:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mUserAgent:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    .line 116
    iput-boolean v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mRoapCanceledbyUser:Z

    .line 117
    iput v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDConfirmed:I

    .line 118
    iput v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmuserConsentConfirmed:I

    .line 119
    iput v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mRoapCntToFakeUI:I

    .line 122
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mContentUri:Landroid/net/Uri;

    .line 123
    iput v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDownloadDbID:I

    .line 126
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mNeedProcessInit:Z

    .line 128
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    .line 129
    iput-boolean v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mIsDrm20CD:Z

    .line 130
    iput-boolean v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mRoapTriggerInDD:Z

    .line 131
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mFileName:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    .line 135
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mInstallNotifyCode:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mInstallNotifyURI:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mNextURI:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mMpHandler:Lcom/lge/browser/MultipartRelatedHandler;

    .line 143
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    .line 147
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 148
    iput p2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mJobType:I

    .line 150
    iget-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getNewOmaDrmHandlerV2ID()I

    move-result v0

    iput v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mOmaDrmHandlerV2ID:I

    .line 151
    return-void
.end method

.method private doInBackgroundROAP()Ljava/lang/String;
    .registers 24

    .prologue
    .line 154
    const-string v17, "false"

    .line 157
    .local v17, result:Ljava/lang/String;
    const/4 v5, 0x0

    .line 158
    .local v5, client:Landroid/net/http/AndroidHttpClient;
    const/16 v16, 0x0

    .line 159
    .local v16, response:Lorg/apache/http/HttpResponse;
    const/4 v15, 0x0

    .line 162
    .local v15, request:Lorg/apache/http/client/methods/HttpGet;
    const/4 v12, 0x0

    .line 163
    .local v12, mimeTypeLine:Ljava/lang/String;
    const/4 v13, 0x0

    .line 166
    .local v13, realMimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    const-string v21, "uri"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mUri:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    const-string v21, "useragent"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mUserAgent:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    const-string v21, "cookiedata"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    const-string v21, "referer"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    const-string v21, "installNotifyURI"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mInstallNotifyURI:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    const-string v21, "nextURI"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mNextURI:Ljava/lang/String;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mUri:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mUri:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_a5

    .line 177
    :cond_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object/from16 v20, v0

    const v21, 0x7f070117

    invoke-virtual/range {v20 .. v21}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 178
    const-string v20, "Download (DRM2)"

    const-string v21, "Emtpy URL specified"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v17

    .line 329
    .end local v17           #result:Ljava/lang/String;
    .local v18, result:Ljava/lang/String;
    :goto_a4
    return-object v18

    .line 183
    .end local v18           #result:Ljava/lang/String;
    .restart local v17       #result:Ljava/lang/String;
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mUserAgent:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v5

    .line 184
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    .end local v15           #request:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mUri:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v15       #request:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_e1

    .line 187
    const-string v20, "Cookie"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_105

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_105

    .line 191
    const-string v20, "Referer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_105
    :try_start_105
    invoke-virtual {v5, v15}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 203
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3cf

    .line 204
    const/4 v11, 0x0

    .line 205
    .local v11, headerTransferEncoding:Ljava/lang/String;
    const/4 v10, 0x0

    .line 208
    .local v10, headerContentLength:Ljava/lang/String;
    const-string v20, "Content-Type"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 209
    .local v9, header:Lorg/apache/http/Header;
    if-eqz v9, :cond_1d7

    .line 210
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 211
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_105 .. :try_end_130} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_105 .. :try_end_130} :catch_318
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_130} :catch_3b0

    .line 213
    .end local v13           #realMimeType:Ljava/lang/String;
    .local v14, realMimeType:Ljava/lang/String;
    const/16 v20, 0x3b

    :try_start_132
    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 214
    .local v19, semicolonIndex:I
    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3ea

    .line 215
    const/16 v20, 0x0

    move-object v0, v14

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_14b
    .catchall {:try_start_132 .. :try_end_14b} :catchall_3dc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_132 .. :try_end_14b} :catch_3e4
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_14b} :catch_3df

    move-result-object v13

    .line 218
    .end local v14           #realMimeType:Ljava/lang/String;
    .restart local v13       #realMimeType:Ljava/lang/String;
    :goto_14c
    :try_start_14c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mJobType:I

    move/from16 v20, v0

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_183

    .line 219
    const-string v20, "multipart/related"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1d7

    .line 220
    const/16 v20, 0x0

    const v21, 0x7f070118

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 221
    const-string v20, "Download (DRM2)"

    const-string v21, "Content-Type is not multipart/related"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17c
    .catchall {:try_start_14c .. :try_end_17c} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14c .. :try_end_17c} :catch_318
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_17c} :catch_3b0

    .line 326
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v18, v17

    .end local v17           #result:Ljava/lang/String;
    .restart local v18       #result:Ljava/lang/String;
    goto/16 :goto_a4

    .line 225
    .end local v18           #result:Ljava/lang/String;
    .restart local v17       #result:Ljava/lang/String;
    :cond_183
    :try_start_183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mJobType:I

    move/from16 v20, v0

    const/16 v21, 0x65

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1ba

    .line 226
    const-string v20, "application/vnd.oma.drm.roap-trigger+xml"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1d7

    .line 227
    const/16 v20, 0x0

    const v21, 0x7f070118

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 228
    const-string v20, "Download (DRM2)"

    const-string v21, "Content-Type is not application/vnd.oma.drm.roap-trigger+xml"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b3
    .catchall {:try_start_183 .. :try_end_1b3} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_183 .. :try_end_1b3} :catch_318
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_1b3} :catch_3b0

    .line 326
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v18, v17

    .end local v17           #result:Ljava/lang/String;
    .restart local v18       #result:Ljava/lang/String;
    goto/16 :goto_a4

    .line 233
    .end local v18           #result:Ljava/lang/String;
    .restart local v17       #result:Ljava/lang/String;
    :cond_1ba
    :try_start_1ba
    const-string v20, "Download (DRM2)"

    const-string v21, "mJobType Error !!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V
    :try_end_1d0
    .catchall {:try_start_1ba .. :try_end_1d0} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ba .. :try_end_1d0} :catch_318
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1d0} :catch_3b0

    .line 326
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v18, v17

    .end local v17           #result:Ljava/lang/String;
    .restart local v18       #result:Ljava/lang/String;
    goto/16 :goto_a4

    .line 240
    .end local v18           #result:Ljava/lang/String;
    .end local v19           #semicolonIndex:I
    .restart local v17       #result:Ljava/lang/String;
    :cond_1d7
    :try_start_1d7
    const-string v20, "Transfer-Encoding"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 241
    if-eqz v9, :cond_1e7

    .line 242
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 244
    :cond_1e7
    if-nez v11, :cond_1f9

    .line 245
    const-string v20, "Content-Length"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 246
    if-eqz v9, :cond_1f9

    .line 247
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 260
    :cond_1f9
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 261
    .local v7, entityStream:Ljava/io/InputStream;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    .line 263
    const/4 v6, -0x1

    .line 265
    .local v6, downloadResult:I
    const/16 v20, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/lge/lgdrm/DrmManager;->createObjectSession(ILandroid/content/Context;)Landroid/lge/lgdrm/DrmObjectSession;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    if-nez v20, :cond_240

    .line 267
    const/16 v20, 0x0

    const v21, 0x7f07011f

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 268
    const-string v20, "Download (DRM2)"

    const-string v21, "Drm createObjectSession Error!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_239
    .catchall {:try_start_1d7 .. :try_end_239} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d7 .. :try_end_239} :catch_318
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_239} :catch_3b0

    .line 326
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v18, v17

    .end local v17           #result:Ljava/lang/String;
    .restart local v18       #result:Ljava/lang/String;
    goto/16 :goto_a4

    .line 272
    .end local v18           #result:Ljava/lang/String;
    .restart local v17       #result:Ljava/lang/String;
    :cond_240
    :try_start_240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mJobType:I

    move/from16 v20, v0

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_296

    .line 273
    new-instance v20, Lcom/lge/browser/MultipartRelatedHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v7

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/MultipartRelatedHandler;-><init>(Lcom/lge/browser/OmaDrmHandlerV2;Ljava/lang/String;Ljava/io/InputStream;Landroid/lge/lgdrm/DrmObjectSession;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mMpHandler:Lcom/lge/browser/MultipartRelatedHandler;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mMpHandler:Lcom/lge/browser/MultipartRelatedHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/browser/MultipartRelatedHandler;->processMultipartRelated()I

    move-result v6

    .line 275
    const/16 v20, -0x1

    move v0, v6

    move/from16 v1, v20

    if-gt v0, v1, :cond_2d9

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mMpHandler:Lcom/lge/browser/MultipartRelatedHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/browser/MultipartRelatedHandler;->getLastError()I

    move-result v20

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move v3, v6

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->doInstallNotify()V
    :try_end_28f
    .catchall {:try_start_240 .. :try_end_28f} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_240 .. :try_end_28f} :catch_318
    .catch Ljava/io/IOException; {:try_start_240 .. :try_end_28f} :catch_3b0

    .line 326
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v18, v17

    .end local v17           #result:Ljava/lang/String;
    .restart local v18       #result:Ljava/lang/String;
    goto/16 :goto_a4

    .line 281
    .end local v18           #result:Ljava/lang/String;
    .restart local v17       #result:Ljava/lang/String;
    :cond_296
    :try_start_296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mJobType:I

    move/from16 v20, v0

    const/16 v21, 0x65

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2bc

    .line 282
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move-object v3, v7

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->processRoapTrigger(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;Ljava/io/InputStream;Ljava/lang/String;)I
    :try_end_2ad
    .catchall {:try_start_296 .. :try_end_2ad} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_296 .. :try_end_2ad} :catch_318
    .catch Ljava/io/IOException; {:try_start_296 .. :try_end_2ad} :catch_3b0

    move-result v6

    .line 283
    const/16 v20, -0x1

    move v0, v6

    move/from16 v1, v20

    if-gt v0, v1, :cond_2d9

    .line 326
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v18, v17

    .end local v17           #result:Ljava/lang/String;
    .restart local v18       #result:Ljava/lang/String;
    goto/16 :goto_a4

    .line 287
    .end local v18           #result:Ljava/lang/String;
    .restart local v17       #result:Ljava/lang/String;
    :cond_2bc
    :try_start_2bc
    const-string v20, "Download (DRM2)"

    const-string v21, "mJobType Error !!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V
    :try_end_2d2
    .catchall {:try_start_2bc .. :try_end_2d2} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2bc .. :try_end_2d2} :catch_318
    .catch Ljava/io/IOException; {:try_start_2bc .. :try_end_2d2} :catch_3b0

    .line 326
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v18, v17

    .end local v17           #result:Ljava/lang/String;
    .restart local v18       #result:Ljava/lang/String;
    goto/16 :goto_a4

    .line 292
    .end local v18           #result:Ljava/lang/String;
    .restart local v17       #result:Ljava/lang/String;
    :cond_2d9
    :try_start_2d9
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_30e

    sget-object v20, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static/range {v20 .. v20}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_30e

    .line 294
    const-string v20, "Download (DRM2)"

    const-string v21, "showRoapPopup() is skipped by 1 progressbar ui"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_2fa
    const/16 v20, -0x1

    move v0, v6

    move/from16 v1, v20

    if-le v0, v1, :cond_334

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v20, v0

    if-eqz v20, :cond_334

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->doROAP()I

    move-result v6

    goto :goto_2fa

    .line 297
    :cond_30e
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->showRoapPopup(Z)V
    :try_end_317
    .catchall {:try_start_2d9 .. :try_end_317} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d9 .. :try_end_317} :catch_318
    .catch Ljava/io/IOException; {:try_start_2d9 .. :try_end_317} :catch_3b0

    goto :goto_2fa

    .line 319
    .end local v6           #downloadResult:I
    .end local v7           #entityStream:Ljava/io/InputStream;
    .end local v9           #header:Lorg/apache/http/Header;
    .end local v10           #headerContentLength:Ljava/lang/String;
    .end local v11           #headerTransferEncoding:Ljava/lang/String;
    :catch_318
    move-exception v20

    move-object/from16 v8, v20

    .line 320
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    :goto_31b
    :try_start_31b
    new-instance v20, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 321
    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_32d
    .catchall {:try_start_31b .. :try_end_32d} :catchall_3d7

    .line 326
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :goto_330
    move-object/from16 v18, v17

    .line 329
    .end local v17           #result:Ljava/lang/String;
    .restart local v18       #result:Ljava/lang/String;
    goto/16 :goto_a4

    .line 303
    .end local v18           #result:Ljava/lang/String;
    .restart local v6       #downloadResult:I
    .restart local v7       #entityStream:Ljava/io/InputStream;
    .restart local v9       #header:Lorg/apache/http/Header;
    .restart local v10       #headerContentLength:Ljava/lang/String;
    .restart local v11       #headerTransferEncoding:Ljava/lang/String;
    .restart local v17       #result:Ljava/lang/String;
    :cond_334
    const/16 v20, -0x1

    move v0, v6

    move/from16 v1, v20

    if-gt v0, v1, :cond_369

    .line 304
    :try_start_33b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->deleteFile(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_391

    .line 305
    const-string v20, "Download (DRM2)"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File is deleted: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_369
    :goto_369
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->showRoapPopup(Z)V

    .line 312
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->getInstallNotifyString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mInstallNotifyCode:Ljava/lang/String;

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->doInstallNotify()V

    .line 314
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_3ca

    const-string v20, "true"
    :try_end_38b
    .catchall {:try_start_33b .. :try_end_38b} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33b .. :try_end_38b} :catch_318
    .catch Ljava/io/IOException; {:try_start_33b .. :try_end_38b} :catch_3b0

    move-object/from16 v17, v20

    .line 326
    .end local v6           #downloadResult:I
    .end local v7           #entityStream:Ljava/io/InputStream;
    .end local v9           #header:Lorg/apache/http/Header;
    .end local v10           #headerContentLength:Ljava/lang/String;
    .end local v11           #headerTransferEncoding:Ljava/lang/String;
    :goto_38d
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_330

    .line 307
    .restart local v6       #downloadResult:I
    .restart local v7       #entityStream:Ljava/io/InputStream;
    .restart local v9       #header:Lorg/apache/http/Header;
    .restart local v10       #headerContentLength:Ljava/lang/String;
    .restart local v11       #headerTransferEncoding:Ljava/lang/String;
    :cond_391
    :try_start_391
    const-string v20, "Download (DRM2)"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File isn\'t deleted: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3af
    .catchall {:try_start_391 .. :try_end_3af} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_391 .. :try_end_3af} :catch_318
    .catch Ljava/io/IOException; {:try_start_391 .. :try_end_3af} :catch_3b0

    goto :goto_369

    .line 322
    .end local v6           #downloadResult:I
    .end local v7           #entityStream:Ljava/io/InputStream;
    .end local v9           #header:Lorg/apache/http/Header;
    .end local v10           #headerContentLength:Ljava/lang/String;
    .end local v11           #headerTransferEncoding:Ljava/lang/String;
    :catch_3b0
    move-exception v20

    move-object/from16 v8, v20

    .line 323
    .local v8, ex:Ljava/io/IOException;
    :goto_3b3
    :try_start_3b3
    new-instance v20, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 324
    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_3c5
    .catchall {:try_start_3b3 .. :try_end_3c5} :catchall_3d7

    .line 326
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_330

    .line 314
    .end local v8           #ex:Ljava/io/IOException;
    .restart local v6       #downloadResult:I
    .restart local v7       #entityStream:Ljava/io/InputStream;
    .restart local v9       #header:Lorg/apache/http/Header;
    .restart local v10       #headerContentLength:Ljava/lang/String;
    .restart local v11       #headerTransferEncoding:Ljava/lang/String;
    :cond_3ca
    :try_start_3ca
    const-string v20, "false"

    move-object/from16 v17, v20

    goto :goto_38d

    .line 317
    .end local v6           #downloadResult:I
    .end local v7           #entityStream:Ljava/io/InputStream;
    .end local v9           #header:Lorg/apache/http/Header;
    .end local v10           #headerContentLength:Ljava/lang/String;
    .end local v11           #headerTransferEncoding:Ljava/lang/String;
    :cond_3cf
    const-string v20, "Download (DRM2)"

    const-string v21, "Not 200 OK when receiving DD & ROAP Trigger"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d6
    .catchall {:try_start_3ca .. :try_end_3d6} :catchall_3d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3ca .. :try_end_3d6} :catch_318
    .catch Ljava/io/IOException; {:try_start_3ca .. :try_end_3d6} :catch_3b0

    goto :goto_38d

    .line 326
    :catchall_3d7
    move-exception v20

    :goto_3d8
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v20

    .end local v13           #realMimeType:Ljava/lang/String;
    .restart local v9       #header:Lorg/apache/http/Header;
    .restart local v10       #headerContentLength:Ljava/lang/String;
    .restart local v11       #headerTransferEncoding:Ljava/lang/String;
    .restart local v14       #realMimeType:Ljava/lang/String;
    :catchall_3dc
    move-exception v20

    move-object v13, v14

    .end local v14           #realMimeType:Ljava/lang/String;
    .restart local v13       #realMimeType:Ljava/lang/String;
    goto :goto_3d8

    .line 322
    .end local v13           #realMimeType:Ljava/lang/String;
    .restart local v14       #realMimeType:Ljava/lang/String;
    :catch_3df
    move-exception v20

    move-object/from16 v8, v20

    move-object v13, v14

    .end local v14           #realMimeType:Ljava/lang/String;
    .restart local v13       #realMimeType:Ljava/lang/String;
    goto :goto_3b3

    .line 319
    .end local v13           #realMimeType:Ljava/lang/String;
    .restart local v14       #realMimeType:Ljava/lang/String;
    :catch_3e4
    move-exception v20

    move-object/from16 v8, v20

    move-object v13, v14

    .end local v14           #realMimeType:Ljava/lang/String;
    .restart local v13       #realMimeType:Ljava/lang/String;
    goto/16 :goto_31b

    .end local v13           #realMimeType:Ljava/lang/String;
    .restart local v14       #realMimeType:Ljava/lang/String;
    .restart local v19       #semicolonIndex:I
    :cond_3ea
    move-object v13, v14

    .end local v14           #realMimeType:Ljava/lang/String;
    .restart local v13       #realMimeType:Ljava/lang/String;
    goto/16 :goto_14c
.end method

.method private doROAP()I
    .registers 24

    .prologue
    .line 383
    const/4 v6, -0x1

    .line 386
    .local v6, downloadResult:I
    const/4 v5, 0x0

    .line 387
    .local v5, client:Landroid/net/http/AndroidHttpClient;
    const/16 v18, 0x0

    .line 388
    .local v18, response:Lorg/apache/http/HttpResponse;
    const/16 v17, 0x0

    .line 390
    .local v17, request:Lorg/apache/http/client/methods/HttpRequestBase;
    const/4 v13, 0x0

    .line 391
    .local v13, mimeTypeLine:Ljava/lang/String;
    const/4 v15, 0x0

    .line 393
    .local v15, realMimeType:Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mUri:Ljava/lang/String;

    .line 394
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mMpHandler:Lcom/lge/browser/MultipartRelatedHandler;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v20, v0

    if-nez v20, :cond_3c

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object/from16 v20, v0

    const v21, 0x7f07011f

    invoke-virtual/range {v20 .. v21}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 398
    const-string v20, "Download (DRM2)"

    const-string v21, "mPostData is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 524
    .end local v6           #downloadResult:I
    .local v7, downloadResult:I
    :goto_3b
    return v7

    .line 401
    .end local v7           #downloadResult:I
    .restart local v6       #downloadResult:I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->requestType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_89

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object/from16 v20, v0

    const v21, 0x7f07011f

    invoke-virtual/range {v20 .. v21}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 403
    const-string v20, "Download (DRM2)"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Invalude DrmDldRequest Type = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->requestType:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 404
    .end local v6           #downloadResult:I
    .restart local v7       #downloadResult:I
    goto :goto_3b

    .line 406
    .end local v7           #downloadResult:I
    .restart local v6       #downloadResult:I
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_c6

    .line 407
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object/from16 v20, v0

    const v21, 0x7f07011f

    invoke-virtual/range {v20 .. v21}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 408
    const-string v20, "Download (DRM2)"

    const-string v21, "Invalude DrmDldRequest uri"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 409
    .end local v6           #downloadResult:I
    .restart local v7       #downloadResult:I
    goto/16 :goto_3b

    .line 412
    .end local v7           #downloadResult:I
    .restart local v6       #downloadResult:I
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mUri:Ljava/lang/String;

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mUserAgent:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v5

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->httpMethod:I

    move/from16 v20, v0

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_237

    .line 419
    new-instance v17, Lorg/apache/http/client/methods/HttpPost;

    .end local v17           #request:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 423
    .restart local v17       #request:Lorg/apache/http/client/methods/HttpRequestBase;
    new-instance v14, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->data:[B

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->data:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object v0, v14

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 424
    .local v14, postEntity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v20, "application/vnd.oma.drm.roap-pdu+xml"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, v17

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 435
    .end local v14           #postEntity:Lorg/apache/http/entity/InputStreamEntity;
    :goto_150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_175

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_175

    .line 436
    const-string v20, "Cookie"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_19a

    .line 439
    const-string v20, "Referer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_19a
    const-string v20, "Accept"

    new-instance v21, Ljava/lang/String;

    const-string v22, "application/vnd.oma.drm.roap-trigger+xml, application/vnd.oma.drm.roap-pdu+xml, multipart/related"

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v20, "DRM-Version"

    const-string v21, "2.1"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :try_start_1b9
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 453
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2ea

    .line 454
    const/4 v12, 0x0

    .line 455
    .local v12, headerTransferEncoding:Ljava/lang/String;
    const/4 v11, 0x0

    .line 458
    .local v11, headerContentLength:Ljava/lang/String;
    const-string v20, "Content-Type"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    .line 459
    .local v10, header:Lorg/apache/http/Header;
    if-eqz v10, :cond_24e

    .line 460
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 461
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1ea
    .catchall {:try_start_1b9 .. :try_end_1ea} :catchall_310
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1ea} :catch_2f7

    .line 463
    .end local v15           #realMimeType:Ljava/lang/String;
    .local v16, realMimeType:Ljava/lang/String;
    const/16 v20, 0x3b

    :try_start_1ec
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 464
    .local v19, semicolonIndex:I
    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_31f

    .line 465
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_207
    .catchall {:try_start_1ec .. :try_end_207} :catchall_315
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_207} :catch_319

    move-result-object v15

    .line 468
    .end local v16           #realMimeType:Ljava/lang/String;
    .restart local v15       #realMimeType:Ljava/lang/String;
    :goto_208
    :try_start_208
    const-string v20, "multipart/related"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_24e

    invoke-static {v15}, Lcom/lge/browser/OmaDrmHandlerV2;->isRoapMimeType(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_24e

    .line 469
    const/16 v20, -0x3

    const v21, 0x7f070118

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v5

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 470
    const-string v20, "Download (DRM2)"

    const-string v21, "The Content-Type is not valid for DRM 2.0"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_231
    .catchall {:try_start_208 .. :try_end_231} :catchall_310
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_231} :catch_2f7

    .line 521
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move v7, v6

    .end local v6           #downloadResult:I
    .restart local v7       #downloadResult:I
    goto/16 :goto_3b

    .line 428
    .end local v7           #downloadResult:I
    .end local v10           #header:Lorg/apache/http/Header;
    .end local v11           #headerContentLength:Ljava/lang/String;
    .end local v12           #headerTransferEncoding:Ljava/lang/String;
    .end local v19           #semicolonIndex:I
    .restart local v6       #downloadResult:I
    :cond_237
    new-instance v17, Lorg/apache/http/client/methods/HttpGet;

    .end local v17           #request:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v17       #request:Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_150

    .line 476
    .restart local v10       #header:Lorg/apache/http/Header;
    .restart local v11       #headerContentLength:Ljava/lang/String;
    .restart local v12       #headerTransferEncoding:Ljava/lang/String;
    :cond_24e
    :try_start_24e
    const-string v20, "Transfer-Encoding"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    .line 477
    if-eqz v10, :cond_25e

    .line 478
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 480
    :cond_25e
    if-nez v12, :cond_270

    .line 481
    const-string v20, "Content-Length"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    .line 482
    if-eqz v10, :cond_270

    .line 483
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 497
    :cond_270
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 498
    .local v8, entityStream:Ljava/io/InputStream;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    .line 500
    if-eqz v15, :cond_2d2

    const-string v20, "multipart/related"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2d2

    .line 501
    new-instance v20, Lcom/lge/browser/MultipartRelatedHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v8

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/MultipartRelatedHandler;-><init>(Lcom/lge/browser/OmaDrmHandlerV2;Ljava/lang/String;Ljava/io/InputStream;Landroid/lge/lgdrm/DrmObjectSession;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mMpHandler:Lcom/lge/browser/MultipartRelatedHandler;

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mMpHandler:Lcom/lge/browser/MultipartRelatedHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/browser/MultipartRelatedHandler;->processMultipartRelated()I

    move-result v6

    .line 503
    const/16 v20, -0x1

    move v0, v6

    move/from16 v1, v20

    if-gt v0, v1, :cond_2f1

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mMpHandler:Lcom/lge/browser/MultipartRelatedHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/browser/MultipartRelatedHandler;->getLastError()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v5

    move v3, v6

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V
    :try_end_2cc
    .catchall {:try_start_24e .. :try_end_2cc} :catchall_310
    .catch Ljava/io/IOException; {:try_start_24e .. :try_end_2cc} :catch_2f7

    .line 521
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move v7, v6

    .end local v6           #downloadResult:I
    .restart local v7       #downloadResult:I
    goto/16 :goto_3b

    .line 509
    .end local v7           #downloadResult:I
    .restart local v6       #downloadResult:I
    :cond_2d2
    :try_start_2d2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v5

    move-object v3, v8

    move-object v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->processRoapTrigger(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;Ljava/io/InputStream;Ljava/lang/String;)I
    :try_end_2dc
    .catchall {:try_start_2d2 .. :try_end_2dc} :catchall_310
    .catch Ljava/io/IOException; {:try_start_2d2 .. :try_end_2dc} :catch_2f7

    move-result v6

    .line 510
    const/16 v20, -0x1

    move v0, v6

    move/from16 v1, v20

    if-gt v0, v1, :cond_2f1

    .line 521
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move v7, v6

    .end local v6           #downloadResult:I
    .restart local v7       #downloadResult:I
    goto/16 :goto_3b

    .line 515
    .end local v7           #downloadResult:I
    .end local v8           #entityStream:Ljava/io/InputStream;
    .end local v10           #header:Lorg/apache/http/Header;
    .end local v11           #headerContentLength:Ljava/lang/String;
    .end local v12           #headerTransferEncoding:Ljava/lang/String;
    .restart local v6       #downloadResult:I
    :cond_2ea
    :try_start_2ea
    const-string v20, "Download (DRM2)"

    const-string v21, "Not 200 OK when ROAP"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f1
    .catchall {:try_start_2ea .. :try_end_2f1} :catchall_310
    .catch Ljava/io/IOException; {:try_start_2ea .. :try_end_2f1} :catch_2f7

    .line 521
    :cond_2f1
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    :goto_2f4
    move v7, v6

    .line 524
    .end local v6           #downloadResult:I
    .restart local v7       #downloadResult:I
    goto/16 :goto_3b

    .line 517
    .end local v7           #downloadResult:I
    .restart local v6       #downloadResult:I
    :catch_2f7
    move-exception v20

    move-object/from16 v9, v20

    .line 518
    .local v9, ex:Ljava/io/IOException;
    :goto_2fa
    :try_start_2fa
    new-instance v20, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 519
    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_30c
    .catchall {:try_start_2fa .. :try_end_30c} :catchall_310

    .line 521
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2f4

    .end local v9           #ex:Ljava/io/IOException;
    :catchall_310
    move-exception v20

    :goto_311
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v20

    .end local v15           #realMimeType:Ljava/lang/String;
    .restart local v10       #header:Lorg/apache/http/Header;
    .restart local v11       #headerContentLength:Ljava/lang/String;
    .restart local v12       #headerTransferEncoding:Ljava/lang/String;
    .restart local v16       #realMimeType:Ljava/lang/String;
    :catchall_315
    move-exception v20

    move-object/from16 v15, v16

    .end local v16           #realMimeType:Ljava/lang/String;
    .restart local v15       #realMimeType:Ljava/lang/String;
    goto :goto_311

    .line 517
    .end local v15           #realMimeType:Ljava/lang/String;
    .restart local v16       #realMimeType:Ljava/lang/String;
    :catch_319
    move-exception v20

    move-object/from16 v9, v20

    move-object/from16 v15, v16

    .end local v16           #realMimeType:Ljava/lang/String;
    .restart local v15       #realMimeType:Ljava/lang/String;
    goto :goto_2fa

    .end local v15           #realMimeType:Ljava/lang/String;
    .restart local v16       #realMimeType:Ljava/lang/String;
    .restart local v19       #semicolonIndex:I
    :cond_31f
    move-object/from16 v15, v16

    .end local v16           #realMimeType:Ljava/lang/String;
    .restart local v15       #realMimeType:Ljava/lang/String;
    goto/16 :goto_208
.end method

.method private downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V
    .registers 7
    .parameter "request"
    .parameter "client"
    .parameter "downloadResult"
    .parameter "strId"

    .prologue
    const/4 v1, 0x1

    .line 882
    if-eqz p1, :cond_6

    .line 883
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 884
    :cond_6
    if-eqz p2, :cond_b

    .line 885
    invoke-virtual {p2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 886
    :cond_b
    if-eqz p3, :cond_13

    .line 887
    invoke-direct {p0, p3}, Lcom/lge/browser/OmaDrmHandlerV2;->getInstallNotifyString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mInstallNotifyCode:Ljava/lang/String;

    .line 888
    :cond_13
    iget-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 889
    if-eqz p4, :cond_26

    const v0, 0x7f070111

    if-eq p4, v0, :cond_26

    .line 890
    iget-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0, p4}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 892
    :cond_26
    invoke-virtual {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v0

    if-ne v0, v1, :cond_3d

    sget-object v0, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v0}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v0

    if-ne v0, v1, :cond_3d

    .line 893
    invoke-virtual {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadDbInfo()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 894
    invoke-direct {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->uiUpdateFakeDownloadAborted()V

    .line 898
    :cond_3d
    if-eqz p4, :cond_4a

    .line 899
    const-string v0, "Download (DRM2)"

    iget-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1, p4}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_4a
    return-void
.end method

.method private getInstallNotifyString(I)Ljava/lang/String;
    .registers 3
    .parameter "downloadResult"

    .prologue
    .line 865
    packed-switch p1, :pswitch_data_16

    .line 877
    :pswitch_3
    const-string v0, "952 Device Aborted"

    :goto_5
    return-object v0

    .line 867
    :pswitch_6
    const-string v0, "900 Success"

    goto :goto_5

    .line 869
    :pswitch_9
    const-string v0, "902 User Cancelled"

    goto :goto_5

    .line 871
    :pswitch_c
    const-string v0, "903 Loss of Service"

    goto :goto_5

    .line 873
    :pswitch_f
    const-string v0, "906 Invalid descriptor"

    goto :goto_5

    .line 875
    :pswitch_12
    const-string v0, "901 Insufficient memory"

    goto :goto_5

    .line 865
    nop

    :pswitch_data_16
    .packed-switch -0x7
        :pswitch_12
        :pswitch_f
        :pswitch_3
        :pswitch_c
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static isRoapMimeType(Ljava/lang/String;)Z
    .registers 2
    .parameter "str"

    .prologue
    .line 904
    const-string v0, "application/vnd.oma.drm.roap-trigger+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "application/vnd.oma.drm.roap-pdu+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "application/vnd.oma.drm.ro+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 908
    :cond_18
    const/4 v0, 0x1

    .line 911
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private onPostExecuteROAP(Ljava/lang/String;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 333
    const-string v1, "false"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 334
    iget-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 335
    iget-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->popupForDDHandlerV1(Ljava/lang/String;)V

    .line 342
    :cond_13
    :goto_13
    const/4 v0, 0x0

    .line 344
    .local v0, nextURL:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v1, v1, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 345
    iget-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v0, v1, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    .line 348
    :goto_22
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2f

    .line 349
    iget-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserActivity;->loadURL(Ljava/lang/String;)V

    .line 352
    :cond_2f
    iget v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mOmaDrmHandlerV2ID:I

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->deleteOmaDrmHandlerV2FromListbyID(I)Z

    .line 353
    return-void

    .line 338
    .end local v0           #nextURL:Ljava/lang/String;
    :cond_35
    iget-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 339
    iget-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->promptInfoPopup(Ljava/lang/String;)V

    goto :goto_13

    .line 347
    .restart local v0       #nextURL:Ljava/lang/String;
    :cond_41
    iget-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mNextURI:Ljava/lang/String;

    goto :goto_22
.end method

.method private processRoapTrigger(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;Ljava/io/InputStream;Ljava/lang/String;)I
    .registers 22
    .parameter "request"
    .parameter "client"
    .parameter "entityStream"
    .parameter "realMimeType"

    .prologue
    .line 529
    const/4 v8, -0x1

    .line 531
    .local v8, downloadResult:I
    const/16 v13, 0x1000

    new-array v7, v13, [B

    .line 532
    .local v7, data:[B
    const/4 v6, 0x0

    .line 535
    .local v6, bytesSoFar:I
    :cond_6
    :goto_6
    const/4 v5, 0x0

    .line 537
    .local v5, bytesRead:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getRoapCanceled()Z

    move-result v13

    if-eqz v13, :cond_44

    .line 538
    const/4 v13, -0x2

    const v14, 0x7f070111

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 540
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mNeedProcessInit:Z

    move v13, v0

    if-nez v13, :cond_42

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 543
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    .line 544
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mNeedProcessInit:Z

    :cond_42
    move v9, v8

    .line 683
    .end local v8           #downloadResult:I
    .local v9, downloadResult:I
    :goto_43
    return v9

    .line 550
    .end local v9           #downloadResult:I
    .restart local v8       #downloadResult:I
    :cond_44
    :try_start_44
    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_8e

    move-result v5

    .line 557
    const/4 v13, -0x1

    if-ne v5, v13, :cond_230

    .line 558
    const/4 v12, 0x2

    .line 559
    .local v12, userResponse:I
    const/4 v11, 0x0

    .line 561
    .local v11, retVal:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v11

    .line 562
    const/4 v13, -0x1

    if-ne v11, v13, :cond_ac

    .line 563
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x5

    const v16, 0x7f07011f

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 564
    const-string v13, "Download (DRM2)"

    const-string v14, "Drm processStatus Error!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 568
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    :cond_8c
    :goto_8c
    move v9, v8

    .line 683
    .end local v8           #downloadResult:I
    .restart local v9       #downloadResult:I
    goto :goto_43

    .line 551
    .end local v9           #downloadResult:I
    .end local v11           #retVal:I
    .end local v12           #userResponse:I
    .restart local v8       #downloadResult:I
    :catch_8e
    move-exception v10

    .line 552
    .local v10, e:Ljava/io/IOException;
    const/4 v13, -0x4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 553
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    move v9, v8

    .line 554
    .end local v8           #downloadResult:I
    .restart local v9       #downloadResult:I
    goto :goto_43

    .line 571
    .end local v9           #downloadResult:I
    .end local v10           #e:Ljava/io/IOException;
    .restart local v8       #downloadResult:I
    .restart local v11       #retVal:I
    .restart local v12       #userResponse:I
    :cond_ac
    const/4 v13, 0x2

    if-eq v11, v13, :cond_b2

    const/4 v13, 0x3

    if-ne v11, v13, :cond_15d

    .line 572
    :cond_b2
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c2

    sget-object v13, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v13}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_cb

    :cond_c2
    sget-object v13, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v13}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_128

    .line 575
    :cond_cb
    const-string v13, "Download (DRM2)"

    const-string v14, "processRoapTrigger(): DRM user consent is skipped !"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_d2
    :goto_d2
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getDrmuserConsentConfirmed()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_166

    const/4 v13, 0x2

    move v12, v13

    .line 597
    :goto_db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v11

    .line 598
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mNeedProcessInit:Z

    .line 600
    const-string v13, "Download (DRM2)"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DRM processEnd = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    if-eqz v11, :cond_10b

    const/4 v13, 0x1

    if-eq v11, v13, :cond_10b

    const/4 v13, 0x3

    if-ne v11, v13, :cond_17e

    .line 603
    :cond_10b
    const/4 v13, 0x3

    if-ne v12, v13, :cond_16a

    .line 604
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x2

    const v16, 0x7f070111

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 605
    const-string v13, "Download (DRM2)"

    const-string v14, "Drm processEnd! No Confirmed"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v8, -0x1

    goto/16 :goto_8c

    .line 578
    :cond_128
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v13

    const v14, 0x7f070120

    invoke-virtual {v13, v14}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->showDrmUserConsentPopup(Ljava/lang/String;)V

    .line 579
    const/4 v13, 0x3

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->setDrmUserConsentConfirmed(I)V

    .line 581
    :goto_140
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getDrmuserConsentConfirmed()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_d2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getDrmuserConsentConfirmed()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_d2

    .line 584
    const-wide/16 v13, 0x64

    :try_start_150
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_153
    .catch Ljava/lang/InterruptedException; {:try_start_150 .. :try_end_153} :catch_154

    goto :goto_140

    .line 585
    :catch_154
    move-exception v10

    .line 586
    .local v10, e:Ljava/lang/InterruptedException;
    const-string v13, "Download (DRM2)"

    const-string v14, "processRoapTrigger, Sleep Interrupted!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_140

    .line 592
    .end local v10           #e:Ljava/lang/InterruptedException;
    :cond_15d
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->setDrmUserConsentConfirmed(I)V

    goto/16 :goto_d2

    .line 595
    :cond_166
    const/4 v13, 0x3

    move v12, v13

    goto/16 :goto_db

    .line 609
    :cond_16a
    const/4 v8, 0x1

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v13, v0

    const v14, 0x7f070123

    invoke-virtual {v13, v14}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    goto/16 :goto_8c

    .line 613
    :cond_17e
    const/4 v13, 0x4

    if-ne v11, v13, :cond_1b8

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/lge/lgdrm/DrmObjectSession;->getNextRequest()Landroid/lge/lgdrm/DrmDldRequest;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    .line 615
    const/4 v8, 0x2

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8c

    sget-object v13, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v13}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8c

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getRoapCnt()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->setRoapCnt(I)V

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getRoapCnt()I

    move-result v13

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->uiUpdateFakeDownloading(I)V

    goto/16 :goto_8c

    .line 621
    :cond_1b8
    const/4 v13, 0x2

    if-ne v11, v13, :cond_1d5

    .line 622
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x5

    const v16, 0x7f070121

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 623
    const-string v13, "Download (DRM2)"

    const-string v14, "Drm processEnd Error! Not a domain member"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v11, -0x1

    goto/16 :goto_8c

    .line 626
    :cond_1d5
    const/4 v13, -0x1

    if-ne v11, v13, :cond_216

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/lge/lgdrm/DrmObjectSession;->getFailReason()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1fe

    .line 628
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x5

    const v16, 0x7f070122

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 629
    const-string v13, "Download (DRM2)"

    const-string v14, "Drm processEnd Error! Domain Full"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_1fb
    const/4 v11, -0x1

    goto/16 :goto_8c

    .line 632
    :cond_1fe
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x5

    const v16, 0x7f07011f

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 633
    const-string v13, "Download (DRM2)"

    const-string v14, "Drm processEnd Error!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fb

    .line 638
    :cond_216
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x5

    const v16, 0x7f07011f

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 639
    const-string v13, "Download (DRM2)"

    const-string v14, "Drm processEnd Unknown Error!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v8, -0x1

    .line 642
    goto/16 :goto_8c

    .line 645
    .end local v11           #retVal:I
    .end local v12           #userResponse:I
    :cond_230
    if-lez v5, :cond_6

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getRoapCanceled()Z

    move-result v13

    if-eqz v13, :cond_270

    .line 648
    const/4 v13, -0x2

    const v14, 0x7f070111

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 650
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mNeedProcessInit:Z

    move v13, v0

    if-nez v13, :cond_26d

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 653
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    .line 654
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mNeedProcessInit:Z

    :cond_26d
    move v9, v8

    .line 656
    .end local v8           #downloadResult:I
    .restart local v9       #downloadResult:I
    goto/16 :goto_43

    .line 659
    .end local v9           #downloadResult:I
    .restart local v8       #downloadResult:I
    :cond_270
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mNeedProcessInit:Z

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2b8

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v0, v13

    move-object/from16 v1, p4

    move-object v2, v14

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_2b2

    .line 661
    const/4 v13, -0x5

    const v14, 0x7f07011f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 662
    const-string v13, "Download (DRM2)"

    const-string v14, "Drm processInit Error!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 665
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move v9, v8

    .line 666
    .end local v8           #downloadResult:I
    .restart local v9       #downloadResult:I
    goto/16 :goto_43

    .line 668
    .end local v9           #downloadResult:I
    .restart local v8       #downloadResult:I
    :cond_2b2
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mNeedProcessInit:Z

    .line 671
    :cond_2b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    invoke-virtual {v13, v7, v5}, Landroid/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v13

    if-eqz v13, :cond_2f5

    .line 672
    const/4 v13, -0x5

    const v14, 0x7f07011f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 673
    const-string v13, "Download (DRM2)"

    const-string v14, "Drm processUpdate Error!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 677
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move v9, v8

    .line 678
    .end local v8           #downloadResult:I
    .restart local v9       #downloadResult:I
    goto/16 :goto_43

    .line 680
    .end local v9           #downloadResult:I
    .restart local v8       #downloadResult:I
    :cond_2f5
    add-int/2addr v6, v5

    goto/16 :goto_6
.end method

.method private uiUpdateFakeDownloadAborted()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1126
    invoke-virtual {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v0

    .line 1127
    .local v0, activity:Lcom/android/browser/BrowserActivity;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1129
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "external_control"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1130
    const-string v2, "status"

    const/16 v3, 0x1eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1131
    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadDbInfo()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1133
    const-string v2, "Download (DRM2)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download UI Aborted... Download DB ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadDbID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void
.end method


# virtual methods
.method public IsOmaDrm20CD()Z
    .registers 2

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mIsDrm20CD:Z

    return v0
.end method

.method public addBasicHeaders(Lorg/apache/http/message/HeaderGroup;)V
    .registers 5
    .parameter "hg"

    .prologue
    .line 781
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Cookie"

    iget-object v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 782
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Referer"

    iget-object v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 783
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 5
    .parameter "fullpath"

    .prologue
    .line 1091
    if-eqz p1, :cond_12

    .line 1092
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1094
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 1098
    .end local v0           #f:Ljava/io/File;
    :goto_11
    return v1

    .line 1097
    :cond_12
    const-string v1, "Download (DRM2)"

    const-string v2, "Filename is null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_19
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 67
    check-cast p1, [Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lge/browser/OmaDrmHandlerV2;->doInBackground([Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 3
    .parameter "values"

    .prologue
    .line 357
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    .line 358
    iget v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mJobType:I

    packed-switch v0, :pswitch_data_12

    .line 365
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 361
    :pswitch_c
    invoke-direct {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->doInBackgroundROAP()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 358
    nop

    :pswitch_data_12
    .packed-switch 0x64
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public doInstallNotify()V
    .registers 15

    .prologue
    const v13, 0x7f07011a

    const-string v12, "Download (DRM2)"

    .line 689
    const/4 v2, 0x0

    .line 690
    .local v2, client:Landroid/net/http/AndroidHttpClient;
    const/4 v9, 0x0

    .line 691
    .local v9, response:Lorg/apache/http/HttpResponse;
    const/4 v8, 0x0

    .line 692
    .local v8, request:Lorg/apache/http/client/methods/HttpPost;
    const/4 v7, 0x0

    .line 695
    .local v7, installNotifyURL:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v10, v10, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    if-nez v10, :cond_1f

    :cond_13
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mInstallNotifyURI:Ljava/lang/String;

    if-nez v10, :cond_1f

    .line 696
    const-string v10, "Download (DRM2)"

    const-string v10, "Not OMA Download"

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_1e
    return-void

    .line 701
    :cond_1f
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    if-eqz v10, :cond_3d

    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v10, v10, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    if-eqz v10, :cond_3d

    .line 702
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v7, v10, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    .line 706
    :goto_2d
    if-eqz v7, :cond_35

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_40

    .line 707
    :cond_35
    const-string v10, "Download (DRM2)"

    const-string v10, "No InstallNotify URL Specified"

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 704
    :cond_3d
    iget-object v7, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mInstallNotifyURI:Ljava/lang/String;

    goto :goto_2d

    .line 711
    :cond_40
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mInstallNotifyCode:Ljava/lang/String;

    if-eqz v10, :cond_4c

    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mInstallNotifyCode:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5c

    .line 712
    :cond_4c
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v10, v13}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 713
    const-string v10, "Download (DRM2)"

    const-string v10, "No InstallNotify Code Specified"

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 718
    :cond_5c
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mUserAgent:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    .line 719
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    .end local v8           #request:Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {v8, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 724
    .restart local v8       #request:Lorg/apache/http/client/methods/HttpPost;
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    if-eqz v10, :cond_7a

    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7a

    .line 725
    const-string v10, "Cookie"

    iget-object v11, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mCookieData:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_7a
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    if-eqz v10, :cond_8d

    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8d

    .line 729
    const-string v10, "Referer"

    iget-object v11, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mReferer:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_8d
    :try_start_8d
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mInstallNotifyCode:Ljava/lang/String;

    invoke-direct {v0, v10}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 734
    .local v0, body:Lorg/apache/http/entity/StringEntity;
    const-string v10, "text/plain"

    invoke-virtual {v0, v10}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_9c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8d .. :try_end_9c} :catch_c6

    .line 743
    const/16 v10, 0x1000

    :try_start_9e
    new-array v3, v10, [B

    .line 745
    .local v3, data:[B
    invoke-virtual {v2, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 752
    if-eqz v9, :cond_ee

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_ee

    .line 754
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 757
    .local v5, entityStream:Ljava/io/InputStream;
    :cond_ba
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_bd
    .catchall {:try_start_9e .. :try_end_bd} :catchall_158
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9e .. :try_end_bd} :catch_f6
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_bd} :catch_127

    move-result v1

    .line 758
    .local v1, bytesRead:I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_ba

    .line 775
    .end local v1           #bytesRead:I
    .end local v5           #entityStream:Ljava/io/InputStream;
    :goto_c1
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1e

    .line 736
    .end local v0           #body:Lorg/apache/http/entity/StringEntity;
    .end local v3           #data:[B
    :catch_c6
    move-exception v10

    move-object v4, v10

    .line 737
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v10, v13}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 738
    const-string v10, "Download (DRM2)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InstallNoti Error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 764
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #body:Lorg/apache/http/entity/StringEntity;
    .restart local v3       #data:[B
    :cond_ee
    :try_start_ee
    const-string v10, "Download (DRM2)"

    const-string v11, "Not 200 OK in Install Notification"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_158
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ee .. :try_end_f5} :catch_f6
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f5} :catch_127

    goto :goto_c1

    .line 766
    .end local v3           #data:[B
    :catch_f6
    move-exception v10

    move-object v6, v10

    .line 767
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    :try_start_f8
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    const v11, 0x7f07011a

    invoke-virtual {v10, v11}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 768
    const-string v10, "Download (DRM2)"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InstallNoti post response Error1:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_122
    .catchall {:try_start_f8 .. :try_end_122} :catchall_158

    .line 775
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1e

    .line 770
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_127
    move-exception v10

    move-object v6, v10

    .line 771
    .local v6, ex:Ljava/io/IOException;
    :try_start_129
    iget-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    const v11, 0x7f07011a

    invoke-virtual {v10, v11}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mStrError:Ljava/lang/String;

    .line 772
    const-string v10, "Download (DRM2)"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InstallNoti post response Error2:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_153
    .catchall {:try_start_129 .. :try_end_153} :catchall_158

    .line 775
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1e

    .end local v6           #ex:Ljava/io/IOException;
    :catchall_158
    move-exception v10

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v10
.end method

.method public getBrowserActivity()Lcom/android/browser/BrowserActivity;
    .registers 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method

.method public getBrowserContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .registers 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getDDConfirmed()I
    .registers 2

    .prologue
    .line 975
    iget v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDConfirmed:I

    return v0
.end method

.method public getDDParser()Lcom/lge/browser/DDParser;
    .registers 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    return-object v0
.end method

.method public getDownloadDbID()I
    .registers 2

    .prologue
    .line 1017
    iget v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDownloadDbID:I

    return v0
.end method

.method public getDownloadDbInfo()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrmCid()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const-string v5, "Download (DRM2)"

    .line 1141
    const/4 v0, 0x0

    .line 1143
    .local v0, cid:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mFileName:Ljava/lang/String;

    if-nez v4, :cond_11

    .line 1144
    const-string v4, "Download (DRM2)"

    const-string v4, "Invalid Argument: mFileName is null"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 1177
    :goto_10
    return-object v4

    .line 1150
    :cond_11
    :try_start_11
    iget-object v4, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mFileName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v3

    .line 1151
    .local v3, session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v3, :cond_23

    .line 1153
    const-string v4, "Download (DRM2)"

    const-string v5, "createContentSession() : Fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 1154
    goto :goto_10

    .line 1158
    :cond_23
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v1

    .line 1159
    .local v1, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v1, :cond_33

    .line 1161
    const-string v4, "Download (DRM2)"

    const-string v5, "getSelectedContent(true) : Fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 1162
    goto :goto_10

    .line 1165
    :cond_33
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 1167
    const-string v4, "Download (DRM2)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmCid: filename="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_5c} :catch_5e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_11 .. :try_end_5c} :catch_64

    .end local v1           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v3           #session:Landroid/lge/lgdrm/DrmContentSession;
    :goto_5c
    move-object v4, v0

    .line 1177
    goto :goto_10

    .line 1169
    :catch_5e
    move-exception v4

    move-object v2, v4

    .line 1171
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_5c

    .line 1173
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_64
    move-exception v4

    move-object v2, v4

    .line 1175
    .local v2, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual {v2}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto :goto_5c
.end method

.method public getDrmuserConsentConfirmed()I
    .registers 2

    .prologue
    .line 986
    iget v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmuserConsentConfirmed:I

    return v0
.end method

.method public getMuliPartHandler()Lcom/lge/browser/MultipartRelatedHandler;
    .registers 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mMpHandler:Lcom/lge/browser/MultipartRelatedHandler;

    return-object v0
.end method

.method public getOmaDrmHandlerV2ID()I
    .registers 2

    .prologue
    .line 951
    iget v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mOmaDrmHandlerV2ID:I

    return v0
.end method

.method public getPostData()Landroid/lge/lgdrm/DrmDldRequest;
    .registers 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    return-object v0
.end method

.method public getRoapCanceled()Z
    .registers 4

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mRoapCanceledbyUser:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 962
    const-string v0, "Download (DRM2)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROAP Canceled Flag is checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mRoapCanceledbyUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_1f
    iget-boolean v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mRoapCanceledbyUser:Z

    return v0
.end method

.method public getRoapCnt()I
    .registers 2

    .prologue
    .line 997
    iget v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mRoapCntToFakeUI:I

    return v0
.end method

.method public isRoapTriggerInDD()Z
    .registers 2

    .prologue
    .line 946
    iget-boolean v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mRoapTriggerInDD:Z

    return v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lge/browser/OmaDrmHandlerV2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 370
    if-nez p1, :cond_3

    .line 379
    :goto_2
    return-void

    .line 371
    :cond_3
    iget v0, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mJobType:I

    packed-switch v0, :pswitch_data_e

    goto :goto_2

    .line 374
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/lge/browser/OmaDrmHandlerV2;->onPostExecuteROAP(Ljava/lang/String;)V

    goto :goto_2

    .line 371
    nop

    :pswitch_data_e
    .packed-switch 0x64
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public parseDD1()I
    .registers 14

    .prologue
    .line 792
    const/4 v7, -0x1

    .line 796
    .local v7, result:I
    :try_start_1
    new-instance v1, Lcom/lge/browser/DDParser;

    invoke-direct {v1}, Lcom/lge/browser/DDParser;-><init>()V

    .line 797
    .local v1, ddParser:Lcom/lge/browser/DDParser;
    iput-object v1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    .line 800
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_13b

    move-result-object v6

    .line 803
    .local v6, parser:Ljavax/xml/parsers/SAXParser;
    :try_start_10
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/data/com.android.browser/temp.dd"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/HandlerBase;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_aa

    .line 811
    :try_start_1a
    const-string v9, "Download (DRM2)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ObjectURI = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const-string v9, "Download (DRM2)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InstallNotifyURI = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v9, "Download (DRM2)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NextURI = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v9, v1, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    if-eqz v9, :cond_e5

    .line 816
    const/4 v5, 0x0

    .line 817
    .local v5, nCount:I
    const/4 v4, 0x0

    .line 818
    .local v4, mimeType:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6f
    iget-object v9, v1, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v3, v9, :cond_d4

    .line 819
    iget-object v9, v1, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #mimeType:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 820
    .restart local v4       #mimeType:Ljava/lang/String;
    const-string v9, "Download (DRM2)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Mimetype = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v11, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-static {v4}, Lcom/lge/browser/OmaDrmHandlerV2;->isRoapMimeType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a7

    .line 822
    add-int/lit8 v5, v5, 0x1

    .line 818
    :cond_a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 804
    .end local v3           #i:I
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #nCount:I
    :catch_aa
    move-exception v9

    move-object v2, v9

    .line 805
    .local v2, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x6

    const v12, 0x7f070116

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 806
    const-string v9, "Download (DRM2)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DD Parsing Error 1 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v7, -0x6

    move v8, v7

    .line 860
    .end local v1           #ddParser:Lcom/lge/browser/DDParser;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v7           #result:I
    .local v8, result:I
    :goto_d3
    return v8

    .line 824
    .end local v8           #result:I
    .restart local v1       #ddParser:Lcom/lge/browser/DDParser;
    .restart local v3       #i:I
    .restart local v4       #mimeType:Ljava/lang/String;
    .restart local v5       #nCount:I
    .restart local v6       #parser:Ljavax/xml/parsers/SAXParser;
    .restart local v7       #result:I
    :cond_d4
    const/4 v9, 0x3

    if-lt v5, v9, :cond_da

    .line 825
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mIsDrm20CD:Z

    .line 826
    :cond_da
    iget-object v9, v1, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ne v5, v9, :cond_e5

    .line 827
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mRoapTriggerInDD:Z

    .line 830
    .end local v3           #i:I
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #nCount:I
    :cond_e5
    iget-object v9, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    const-string v10, "uri"

    iget-object v11, v1, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v9

    iget-object v10, v1, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, cookie:Ljava/lang/String;
    if-eqz v0, :cond_101

    .line 833
    iget-object v9, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    const-string v10, "cookiedata"

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_101
    iget-object v9, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    const-string v10, "destination"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    iget-object v9, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    const-string v10, "hint"

    iget-object v11, v1, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v9, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    const-string v10, "description"

    iget-object v11, v1, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget v9, v1, Lcom/lge/browser/DDParser;->size:I

    if-lez v9, :cond_138

    .line 850
    iget-object v9, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mValues:Landroid/content/ContentValues;

    const-string v10, "total_bytes"

    iget v11, v1, Lcom/lge/browser/DDParser;->size:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_138} :catch_13b

    .line 853
    :cond_138
    const/4 v7, 0x1

    .end local v0           #cookie:Ljava/lang/String;
    .end local v1           #ddParser:Lcom/lge/browser/DDParser;
    .end local v6           #parser:Ljavax/xml/parsers/SAXParser;
    :goto_139
    move v8, v7

    .line 860
    .end local v7           #result:I
    .restart local v8       #result:I
    goto :goto_d3

    .line 854
    .end local v8           #result:I
    .restart local v7       #result:I
    :catch_13b
    move-exception v9

    move-object v2, v9

    .line 855
    .restart local v2       #e:Ljava/lang/Exception;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x6

    const v12, 0x7f070116

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/lge/browser/OmaDrmHandlerV2;->downloadAbort(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/http/AndroidHttpClient;II)V

    .line 856
    const-string v9, "Download (DRM2)"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DD Parsing Error 2 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v7, -0x6

    goto :goto_139
.end method

.method public setDDConfirmed(I)V
    .registers 5
    .parameter "b"

    .prologue
    .line 980
    iput p1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDConfirmed:I

    .line 981
    const-string v0, "Download (DRM2)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DD Confirmed Canceled Flag is set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0: None, 1: Yes, 2: No, 3: Not Selected)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void
.end method

.method public setDownloadDbID(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 1022
    iput p1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDownloadDbID:I

    .line 1023
    return-void
.end method

.method public setDownloadDbInfo(Landroid/net/Uri;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mContentUri:Landroid/net/Uri;

    .line 1013
    return-void
.end method

.method public setDrmUserConsentConfirmed(I)V
    .registers 5
    .parameter "b"

    .prologue
    .line 991
    iput p1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDrmuserConsentConfirmed:I

    .line 992
    const-string v0, "Download (DRM2)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDrmuserConsentConfirmed Flag is set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0: None, 1: Yes, 2: No, 3: Not Selected)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void
.end method

.method public setFullFilePath(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mFileName:Ljava/lang/String;

    .line 1081
    return-void
.end method

.method public setPostData(Landroid/lge/lgdrm/DrmDldRequest;)V
    .registers 2
    .parameter "postData"

    .prologue
    .line 916
    iput-object p1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    .line 917
    return-void
.end method

.method public setRoapCanceled(Z)V
    .registers 5
    .parameter "b"

    .prologue
    .line 969
    iput-boolean p1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mRoapCanceledbyUser:Z

    .line 970
    const-string v0, "Download (DRM2)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROAP Canceled Flag is set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void
.end method

.method public setRoapCnt(I)V
    .registers 2
    .parameter "cnt"

    .prologue
    .line 1002
    iput p1, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mRoapCntToFakeUI:I

    .line 1003
    return-void
.end method

.method public showDDPopup()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1027
    const/4 v0, 0x0

    .line 1028
    .local v0, ddMimetypes:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v3, v3, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v3, v3, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_65

    .line 1029
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    iget-object v3, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v3, v3, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    .line 1030
    sget-object v3, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v3

    if-ne v3, v5, :cond_b2

    .line 1031
    new-instance v0, Ljava/lang/String;

    .end local v0           #ddMimetypes:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v3, v3, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1032
    .restart local v0       #ddMimetypes:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/browser/DDHandlerV1;->isDrmMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ad

    invoke-static {v0}, Lcom/lge/browser/DDHandlerV1;->isDrmRightMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ad

    invoke-static {v0}, Lcom/lge/browser/OmaDrmHandlerV2;->isRoapMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ad

    .line 1044
    :cond_46
    sget-object v3, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v3

    if-ne v3, v5, :cond_65

    .line 1045
    if-nez v0, :cond_65

    iget-object v3, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v3, v3, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_65

    .line 1046
    iget-object v3, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v3, v3, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ddMimetypes:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1050
    .end local v1           #i:I
    .restart local v0       #ddMimetypes:Ljava/lang/String;
    :cond_65
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.browser.download.DD_POPUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "OmaDrmHandlerV2ID"

    iget v4, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mOmaDrmHandlerV2ID:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1052
    const-string v3, "ddName"

    iget-object v4, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v4, v4, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    const-string v3, "ddSize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget v5, v5, Lcom/lge/browser/DDParser;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    const-string v3, "ddType"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    invoke-virtual {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1058
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/lge/browser/OmaDrmHandlerV2;->setDDConfirmed(I)V

    .line 1059
    return-void

    .line 1035
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #i:I
    :cond_ad
    const/4 v0, 0x0

    .line 1029
    :goto_ae
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    .line 1038
    :cond_b2
    if-nez v1, :cond_c4

    .line 1039
    new-instance v0, Ljava/lang/String;

    .end local v0           #ddMimetypes:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v3, v3, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v0       #ddMimetypes:Ljava/lang/String;
    goto :goto_ae

    .line 1041
    :cond_c4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget-object v3, v3, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ae
.end method

.method public showDrmUserConsentPopup(Ljava/lang/String;)V
    .registers 5
    .parameter "str"

    .prologue
    .line 1071
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.browser.download.USER_CONSENT_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PopupID"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    const-string v1, "OmaDrmHandlerV2ID"

    iget v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mOmaDrmHandlerV2ID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1075
    invoke-virtual {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1076
    return-void
.end method

.method public showRoapPopup(Z)V
    .registers 5
    .parameter "bShow"

    .prologue
    .line 1063
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.browser.download.ROAP_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1064
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "show"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1065
    const-string v1, "OmaDrmHandlerV2ID"

    iget v2, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mOmaDrmHandlerV2ID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    invoke-virtual {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1067
    return-void
.end method

.method public uiUpdateFakeDownloading(I)V
    .registers 10
    .parameter "fakeKB"

    .prologue
    const/4 v7, 0x0

    .line 1103
    invoke-virtual {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v0

    .line 1104
    .local v0, activity:Lcom/android/browser/BrowserActivity;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1106
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "external_control"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1107
    const-string v3, "current_bytes"

    mul-int/lit16 v4, p1, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    iget-object v3, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget v3, v3, Lcom/lge/browser/DDParser;->size:I

    if-lez v3, :cond_33

    .line 1111
    const-string v3, "total_bytes"

    iget-object v4, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mDDParser:Lcom/lge/browser/DDParser;

    iget v4, v4, Lcom/lge/browser/DDParser;->size:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1113
    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/browser/OmaDrmHandlerV2;->getDDParser()Lcom/lge/browser/DDParser;

    move-result-object v4

    iget-object v4, v4, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    const-string v5, "[^a-zA-Z0-9\\.\\-_]+"

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".odf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, fileName:Ljava/lang/String;
    const-string v3, "_data"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/browser/OmaDrmHandlerV2;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1122
    return-void
.end method
