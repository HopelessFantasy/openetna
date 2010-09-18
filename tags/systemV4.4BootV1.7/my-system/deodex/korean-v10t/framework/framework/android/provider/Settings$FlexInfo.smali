.class public final Landroid/provider/Settings$FlexInfo;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlexInfo"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_VALUES:Ljava/lang/String; = "default_values"

.field public static final NAMEINDEX:Ljava/lang/String; = "flex_name"

.field public static final OPERATOR_INDEX:Ljava/lang/String; = "operator_index"

.field private static final TAG:Ljava/lang/String; = "FlexInfo"

.field public static final USER_VALUES:Ljava/lang/String; = "user_values"

.field public static operator_index:I = 0x0

.field private static final sDefaultProjection:[Ljava/lang/String; = null

.field private static final sIntentProjection:[Ljava/lang/String; = null

.field private static final sShortcutSelection:Ljava/lang/String; = "operator_index=? and flex_name=?"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4183
    const-string v0, "content://settings/flexinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$FlexInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 4197
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "user_values"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/Settings$FlexInfo;->sIntentProjection:[Ljava/lang/String;

    .line 4198
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "default_values"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/Settings$FlexInfo;->sDefaultProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "cr"
    .parameter "flexname"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 4262
    invoke-static {p0}, Landroid/provider/Settings$FlexInfo;->setOperatorIndexCode(Landroid/content/ContentResolver;)V

    .line 4263
    const-string v0, "FlexInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFlexCode : operator_code =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/provider/Settings$FlexInfo;->operator_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    sget-object v1, Landroid/provider/Settings$FlexInfo;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$FlexInfo;->sDefaultProjection:[Ljava/lang/String;

    const-string v3, "operator_index=? and flex_name=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    sget v0, Landroid/provider/Settings$FlexInfo;->operator_index:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x1

    aput-object p1, v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4269
    .local v6, c:Landroid/database/Cursor;
    :try_start_38
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 4270
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_4c

    move-result-object v0

    .line 4273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4275
    :goto_46
    return-object v0

    .line 4273
    :cond_47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 4275
    goto :goto_46

    .line 4273
    :catchall_4c
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "cr"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 4226
    invoke-static {p0}, Landroid/provider/Settings$FlexInfo;->setOperatorIndexCode(Landroid/content/ContentResolver;)V

    .line 4227
    const-string v0, "FlexInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFlexCode : operator_code =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/provider/Settings$FlexInfo;->operator_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    sget-object v1, Landroid/provider/Settings$FlexInfo;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$FlexInfo;->sIntentProjection:[Ljava/lang/String;

    const-string v3, "operator_index=? and flex_name=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    sget v0, Landroid/provider/Settings$FlexInfo;->operator_index:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x1

    aput-object p1, v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4233
    .local v6, c:Landroid/database/Cursor;
    :try_start_38
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 4234
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_4c

    move-result-object v0

    .line 4237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4239
    :goto_46
    return-object v0

    .line 4237
    :cond_47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 4239
    goto :goto_46

    .line 4237
    :catchall_4c
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "cr"
    .parameter "flexname"
    .parameter "user_value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, ""

    .line 4244
    invoke-static {p0}, Landroid/provider/Settings$FlexInfo;->setOperatorIndexCode(Landroid/content/ContentResolver;)V

    .line 4245
    const-string v2, "FlexInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFlexCode : saveFlexValue =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/provider/Settings$FlexInfo;->operator_index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4247
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, ""

    if-eq p1, v5, :cond_2e

    const-string v2, ""

    if-ne p2, v5, :cond_30

    :cond_2e
    move v2, v6

    .line 4257
    :goto_2f
    return v2

    .line 4250
    :cond_30
    const-string v2, "user_values"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4253
    sget-object v2, Landroid/provider/Settings$FlexInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "operator_index=? and flex_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    sget v5, Landroid/provider/Settings$FlexInfo;->operator_index:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4254
    .local v0, i:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4f

    move v2, v6

    .line 4255
    goto :goto_2f

    :cond_4f
    move v2, v7

    .line 4257
    goto :goto_2f
.end method

.method private static setOperatorIndexCode(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "cr"

    .prologue
    const-string v3, "OperatorIndex"

    .line 4204
    :try_start_2
    const-string v1, "OperatorIndex"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/provider/Settings$FlexInfo;->operator_index:I
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_a} :catch_2b

    .line 4210
    :goto_a
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {p0}, Landroid/provider/Settings$FlexInfo_Operator;->is_simchange(Landroid/content/ContentResolver;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 4212
    invoke-static {p0}, Landroid/provider/Settings$FlexInfo_Operator;->loadOperatorCode(Landroid/content/ContentResolver;)I

    move-result v1

    sput v1, Landroid/provider/Settings$FlexInfo;->operator_index:I

    .line 4213
    const-string v1, "OperatorIndex"

    sget v1, Landroid/provider/Settings$FlexInfo;->operator_index:I

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4223
    :cond_2a
    :goto_2a
    return-void

    .line 4205
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 4206
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    sput v1, Landroid/provider/Settings$FlexInfo;->operator_index:I

    goto :goto_a

    .line 4217
    .end local v0           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_31
    sget v1, Landroid/provider/Settings$FlexInfo;->operator_index:I

    if-nez v1, :cond_2a

    .line 4219
    invoke-static {p0}, Landroid/provider/Settings$FlexInfo_Operator;->loadOperatorCode(Landroid/content/ContentResolver;)I

    move-result v1

    sput v1, Landroid/provider/Settings$FlexInfo;->operator_index:I

    .line 4220
    const-string v1, "OperatorIndex"

    sget v1, Landroid/provider/Settings$FlexInfo;->operator_index:I

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2a
.end method
