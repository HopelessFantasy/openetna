.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static sSkipVmCheck:Z


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cnapName:Ljava/lang/String;

.field public contactExists:Z

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public isCachedPhotoCurrent:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public person_id:J

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public shouldSendToVoicemail:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/CallerInfo;->sSkipVmCheck:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "number"

    .prologue
    .line 309
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 310
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x0

    .line 312
    .local v0, callerID:Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 313
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 315
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 316
    move-object v0, v2

    .line 322
    .end local v2           #name:Ljava/lang/String;
    :cond_10
    :goto_10
    return-object v0

    .line 318
    .restart local v2       #name:Ljava/lang/String;
    :cond_11
    move-object v0, p1

    goto :goto_10
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .registers 8
    .parameter "context"
    .parameter "contactRef"

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .registers 12
    .parameter "context"
    .parameter "contactRef"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 123
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 124
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 125
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 126
    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 127
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 128
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 129
    iput-boolean v7, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 130
    iput-boolean v7, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 134
    if-eqz p2, :cond_af

    .line 135
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 140
    const-string v3, "name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, columnIndex:I
    if-eq v0, v6, :cond_2d

    .line 142
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 146
    :cond_2d
    const-string v3, "number"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 147
    if-eq v0, v6, :cond_3b

    .line 148
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 152
    :cond_3b
    const-string v3, "label"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 153
    if-eq v0, v6, :cond_65

    .line 154
    const-string v3, "type"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, typeColumnIndex:I
    if-eq v2, v6, :cond_65

    .line 156
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 157
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 158
    iget v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 165
    .end local v2           #typeColumnIndex:I
    :cond_65
    const-string v3, "person"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 166
    if-eq v0, v6, :cond_bc

    .line 167
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 177
    :cond_73
    :goto_73
    const-string v3, "custom_ringtone"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 178
    if-eq v0, v6, :cond_cb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_cb

    .line 179
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 186
    :goto_8b
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/provider/Contacts$People;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 193
    const-string v3, "send_to_voicemail"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 194
    if-eq v0, v6, :cond_ce

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v8, :cond_ce

    move v3, v8

    :goto_a8
    iput-boolean v3, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 196
    iput-boolean v8, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 198
    .end local v0           #columnIndex:I
    :cond_ac
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_af
    iput-boolean v7, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 202
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 203
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 205
    return-object v1

    .line 169
    .restart local v0       #columnIndex:I
    :cond_bc
    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 170
    if-eq v0, v6, :cond_73

    .line 171
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    goto :goto_73

    .line 181
    :cond_cb
    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_8b

    :cond_ce
    move v3, v7

    .line 194
    goto :goto_a8
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .registers 8
    .parameter "context"
    .parameter "number"

    .prologue
    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 234
    const/4 v4, 0x0

    .line 289
    :goto_7
    return-object v4

    .line 239
    :cond_8
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 240
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 244
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    const v4, 0x104017c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v4, v0

    .line 246
    goto :goto_7

    .line 255
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_1e
    :try_start_1e
    sget-boolean v4, Lcom/android/internal/telephony/CallerInfo;->sSkipVmCheck:Z

    if-nez v4, :cond_46

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->compareEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 259
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 263
    .restart local v0       #ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_3f} :catch_41

    move-object v4, v0

    .line 267
    goto :goto_7

    .line 269
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    :catch_41
    move-exception v4

    move-object v2, v4

    .line 273
    .local v2, ex:Ljava/lang/SecurityException;
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/CallerInfo;->sSkipVmCheck:Z

    .line 278
    .end local v2           #ex:Ljava/lang/SecurityException;
    :cond_46
    sget-object v4, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 281
    .local v1, contactUri:Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 285
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 286
    iput-object p1, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_5e
    move-object v4, v3

    .line 289
    goto :goto_7
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 326
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    :cond_8
    move-object v0, p0

    .line 329
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
