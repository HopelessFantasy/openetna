.class public Lcom/android/providers/downloads/MimeTypeLgeMap;
.super Ljava/lang/Object;
.source "MimeTypeLgeMap.java"


# static fields
.field private static sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;


# instance fields
.field private mExtensionToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeTypeToExtensionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/MimeTypeLgeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/MimeTypeLgeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method public static getSingleton()Lcom/android/providers/downloads/MimeTypeLgeMap;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const-string v8, "dcf"

    const-string v7, "application/vnd.oma.drm.content"

    const-string v6, "3gp"

    const-string v5, "mp3"

    .line 129
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    if-nez v1, :cond_214

    .line 130
    new-instance v1, Lcom/android/providers/downloads/MimeTypeLgeMap;

    invoke-direct {v1}, Lcom/android/providers/downloads/MimeTypeLgeMap;-><init>()V

    sput-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    .line 144
    invoke-static {}, Lcom/android/providers/downloads/LocaleManager;->getOperator()I

    move-result v0

    .line 151
    .local v0, Operator:I
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/vnd.oma.drm.message"

    const-string v3, "dm"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "image/gif"

    const-string v3, "gif"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "image/vnd.wap.wbmp"

    const-string v3, "wbmp"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "image/wbmp"

    const-string v3, "wbmp"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "image/bmp"

    const-string v3, "bmp"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "image/x-bmp"

    const-string v3, "bmp"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "image/x-MS-bmp"

    const-string v3, "bmp"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "image/jpeg"

    const-string v3, "jpg"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "image/jpg"

    const-string v3, "jpg"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "image/png"

    const-string v3, "png"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "image/x-png"

    const-string v3, "png"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/amr"

    const-string v3, "amr"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/x-amr"

    const-string v3, "amr"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/amr-wb"

    const-string v3, "amr"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/mid"

    const-string v3, "mid"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/x-mid"

    const-string v3, "mid"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/sp-midi"

    const-string v3, "mid"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/midi"

    const-string v3, "midi"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/x-midi"

    const-string v3, "midi"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/imy"

    const-string v3, "imy"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/imelody"

    const-string v3, "imy"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/x-imelody"

    const-string v3, "imy"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/wav"

    const-string v3, "wav"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/x-wav"

    const-string v3, "wav"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/3gpp"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/3gp"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/mp3"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/x-mp3"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/mpg"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/x-mpeg"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/mpeg3"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/x-mpeg3"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/mpg3"

    const-string v3, "mp3"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 189
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/m4a"

    const-string v3, "m4a"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/x-m4a"

    const-string v3, "m4a"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/mp4"

    const-string v3, "mp4"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/wma"

    const-string v3, "wma"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/x-ms-wma"

    const-string v3, "wma"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/asf"

    const-string v3, "asf"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/x-ms-asf"

    const-string v3, "asf"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "audio/3ga"

    const-string v3, "3ga"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "video/wmv"

    const-string v3, "wmv"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "video/x-ms-wmv"

    const-string v3, "wmv"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "video/mpeg4"

    const-string v3, "mp4"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 202
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "video/mp4"

    const-string v3, "mp4"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 203
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "video/3gp"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "video/3gpp"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "video/H264"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "video/H263"

    const-string v3, "3gp"

    invoke-direct {v1, v2, v6, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "video/asf"

    const-string v3, "asf"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 208
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "video/x-ms-asf"

    const-string v3, "asf"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/sdp"

    const-string v3, "sdp"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/x-sdp"

    const-string v3, "sdp"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    const/16 v1, 0x10

    if-ne v0, v1, :cond_217

    .line 219
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 220
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/vnd.oma.drm.dcf"

    const-string v3, "odf"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    .end local v0           #Operator:I
    :cond_214
    :goto_214
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    return-object v1

    .line 226
    .restart local v0       #Operator:I
    :cond_217
    const/16 v1, 0xd

    if-ne v0, v1, :cond_225

    .line 227
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_214

    .line 233
    :cond_225
    const/4 v1, 0x7

    if-ne v0, v1, :cond_23b

    .line 235
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/vnd.oma.drm.dcf"

    const-string v3, "odf"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_214

    .line 242
    :cond_23b
    const/4 v1, 0x5

    if-ne v0, v1, :cond_251

    .line 244
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/x-lge-cfm"

    const-string v3, "cfm"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_214

    .line 251
    :cond_251
    const/16 v1, 0xb

    if-ne v0, v1, :cond_268

    .line 253
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 254
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/vnd.oma.drm.dcf"

    const-string v3, "odf"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_214

    .line 260
    :cond_268
    const/4 v1, 0x1

    if-eq v0, v1, :cond_214

    .line 276
    sget-object v1, Lcom/android/providers/downloads/MimeTypeLgeMap;->sMimeTypeMap:Lcom/android/providers/downloads/MimeTypeLgeMap;

    const-string v2, "application/vnd.oma.drm.content"

    const-string v2, "dcf"

    invoke-direct {v1, v7, v8, v4}, Lcom/android/providers/downloads/MimeTypeLgeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_214
.end method

.method private loadEntry(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "mimeType"
    .parameter "extension"
    .parameter "textType"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/providers/downloads/MimeTypeLgeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 67
    iget-object v0, p0, Lcom/android/providers/downloads/MimeTypeLgeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_d
    if-nez p3, :cond_14

    .line 77
    iget-object v0, p0, Lcom/android/providers/downloads/MimeTypeLgeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_14
    return-void
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 118
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 119
    iget-object v0, p0, Lcom/android/providers/downloads/MimeTypeLgeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 122
    :goto_11
    return-object v0

    .restart local p0
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "extension"

    .prologue
    .line 96
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 97
    iget-object v0, p0, Lcom/android/providers/downloads/MimeTypeLgeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 100
    :goto_11
    return-object v0

    .restart local p0
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .registers 3
    .parameter "extension"

    .prologue
    .line 107
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 108
    iget-object v0, p0, Lcom/android/providers/downloads/MimeTypeLgeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 111
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 85
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 86
    iget-object v0, p0, Lcom/android/providers/downloads/MimeTypeLgeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
