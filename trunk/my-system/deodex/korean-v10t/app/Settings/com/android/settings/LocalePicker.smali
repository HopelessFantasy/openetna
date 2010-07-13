.class public Lcom/android/settings/LocalePicker;
.super Landroid/app/ListActivity;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocalePicker$Loc;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mLocales:[Lcom/android/settings/LocalePicker$Loc;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 46
    return-void
.end method

.method private getDisplayLanguageByISO(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 53
    .parameter "languageCode"
    .parameter "countryCode"
    .parameter "lanLoc"

    .prologue
    .line 168
    const-string v25, "en"

    .line 169
    .local v25, ISO_LANGUAGE_English:Ljava/lang/String;
    const-string v27, "fr"

    .line 170
    .local v27, ISO_LANGUAGE_French:Ljava/lang/String;
    const-string v28, "de"

    .line 171
    .local v28, ISO_LANGUAGE_German:Ljava/lang/String;
    const-string v33, "it"

    .line 172
    .local v33, ISO_LANGUAGE_Italian:Ljava/lang/String;
    const-string v40, "es"

    .line 173
    .local v40, ISO_LANGUAGE_Spanish:Ljava/lang/String;
    const-string v24, "nl"

    .line 174
    .local v24, ISO_LANGUAGE_Dutch:Ljava/lang/String;
    const-string v41, "sv"

    .line 175
    .local v41, ISO_LANGUAGE_Swedish:Ljava/lang/String;
    const-string v23, "da"

    .line 176
    .local v23, ISO_LANGUAGE_Danish:Ljava/lang/String;
    const-string v38, "pt"

    .line 177
    .local v38, ISO_LANGUAGE_Portuguese:Ljava/lang/String;
    const-string v37, "pl"

    .line 178
    .local v37, ISO_LANGUAGE_Polish:Ljava/lang/String;
    const-string v29, "el"

    .line 179
    .local v29, ISO_LANGUAGE_Greek:Ljava/lang/String;
    const-string v22, "cs"

    .line 180
    .local v22, ISO_LANGUAGE_Czech:Ljava/lang/String;
    const-string v30, "iw"

    .line 181
    .local v30, ISO_LANGUAGE_Hebrew:Ljava/lang/String;
    const-string v39, "ru"

    .line 182
    .local v39, ISO_LANGUAGE_Russian:Ljava/lang/String;
    const-string v21, "zh"

    .line 183
    .local v21, ISO_LANGUAGE_Chinesetr:Ljava/lang/String;
    const-string v20, "zh"

    .line 184
    .local v20, ISO_LANGUAGE_Chinesesi:Ljava/lang/String;
    const-string v34, "ko"

    .line 185
    .local v34, ISO_LANGUAGE_Korean:Ljava/lang/String;
    const-string v19, "ar"

    .line 186
    .local v19, ISO_LANGUAGE_Arabic:Ljava/lang/String;
    const-string v43, "tr"

    .line 187
    .local v43, ISO_LANGUAGE_Turkish:Ljava/lang/String;
    const-string v35, "ms"

    .line 188
    .local v35, ISO_LANGUAGE_Malay:Ljava/lang/String;
    const-string v42, "th"

    .line 189
    .local v42, ISO_LANGUAGE_Thai:Ljava/lang/String;
    const-string v32, "id"

    .line 190
    .local v32, ISO_LANGUAGE_Indonesian:Ljava/lang/String;
    const-string v44, "vi"

    .line 193
    .local v44, ISO_LANGUAGE_Vietnamese:Ljava/lang/String;
    const-string v31, "is"

    .line 194
    .local v31, ISO_LANGUAGE_Icelandic:Ljava/lang/String;
    const-string v26, "fi"

    .line 195
    .local v26, ISO_LANGUAGE_Finnish:Ljava/lang/String;
    const-string v36, "no"

    .line 197
    .local v36, ISO_LANGUAGE_Norwegian:Ljava/lang/String;
    const-string v17, "GB"

    .line 198
    .local v17, ISO_COUNTRY_UNITED_KINGDOM:Ljava/lang/String;
    const-string v18, "US"

    .line 199
    .local v18, ISO_COUNTRY_UNITED_STATES:Ljava/lang/String;
    const-string v12, "IT"

    .line 200
    .local v12, ISO_COUNTRY_ITALY:Ljava/lang/String;
    const-string v16, "CH"

    .line 201
    .local v16, ISO_COUNTRY_SWITZERLAND:Ljava/lang/String;
    const-string v8, "DE"

    .line 202
    .local v8, ISO_COUNTRY_GERMANY:Ljava/lang/String;
    const-string v7, "FR"

    .line 203
    .local v7, ISO_COUNTRY_FRANCE:Ljava/lang/String;
    const-string v14, "NL"

    .line 204
    .local v14, ISO_COUNTRY_NETHERLANDS:Ljava/lang/String;
    const-string v3, "BE"

    .line 205
    .local v3, ISO_COUNTRY_BELGIUM:Ljava/lang/String;
    const-string v5, "CA"

    .line 206
    .local v5, ISO_COUNTRY_CANADA:Ljava/lang/String;
    const-string v10, "IE"

    .line 207
    .local v10, ISO_COUNTRY_IRELAND:Ljava/lang/String;
    const-string v2, "AU"

    .line 208
    .local v2, ISO_COUNTRY_AUSTRALIA:Ljava/lang/String;
    const-string v4, "BR"

    .line 209
    .local v4, ISO_COUNTRY_BRASIL:Ljava/lang/String;
    const-string v13, "MX"

    .line 210
    .local v13, ISO_COUNTRY_MEXICO:Ljava/lang/String;
    const-string v11, "IL"

    .line 213
    .local v11, ISO_COUNTRY_ISRAEL:Ljava/lang/String;
    const-string v9, "IS"

    .line 214
    .local v9, ISO_COUNTRY_ICELAND:Ljava/lang/String;
    const-string v6, "FI"

    .line 215
    .local v6, ISO_COUNTRY_FINLAND:Ljava/lang/String;
    const-string v15, "NO"

    .line 218
    .local v15, ISO_COUNTRY_NORWAY:Ljava/lang/String;
    const/16 v45, 0x0

    .line 222
    .local v45, displayLnguage:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_e3

    .line 226
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_97

    .line 227
    const v46, 0x7f080385

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 339
    :cond_76
    :goto_76
    if-eqz v45, :cond_403

    .line 340
    const-string v46, "LocalePicker"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "displayLnguage: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v46, v45

    .line 344
    :goto_96
    return-object v46

    .line 228
    :cond_97
    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_ac

    .line 229
    const v46, 0x7f080388

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto :goto_76

    .line 230
    :cond_ac
    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_c1

    .line 231
    const v46, 0x7f080389

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto :goto_76

    .line 232
    :cond_c1
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_d7

    .line 233
    const v46, 0x7f080387

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto :goto_76

    .line 235
    :cond_d7
    const v46, 0x7f08038a

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto :goto_76

    .line 237
    :cond_e3
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_13d

    .line 238
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_104

    .line 239
    const v46, 0x7f08038d

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 240
    :cond_104
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_11a

    .line 241
    const v46, 0x7f08038c

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 242
    :cond_11a
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_130

    .line 243
    const v46, 0x7f08038b

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 245
    :cond_130
    const v46, 0x7f08038e

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 247
    :cond_13d
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_16b

    .line 248
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_15e

    .line 249
    const v46, 0x7f08038f

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 251
    :cond_15e
    const v46, 0x7f080390

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 253
    :cond_16b
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_199

    .line 254
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_18c

    .line 255
    const v46, 0x7f080391

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 257
    :cond_18c
    const v46, 0x7f080392

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 259
    :cond_199
    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1c6

    .line 260
    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1b9

    .line 261
    const v46, 0x7f080394

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 263
    :cond_1b9
    const v46, 0x7f080393

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 266
    :cond_1c6
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1f3

    .line 267
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1e6

    .line 268
    const v46, 0x7f080395

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 270
    :cond_1e6
    const v46, 0x7f080396

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 272
    :cond_1f3
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_20a

    .line 273
    const v46, 0x7f080397

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 275
    :cond_20a
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_221

    .line 276
    const v46, 0x7f080398

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 278
    :cond_221
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_24e

    .line 279
    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_241

    .line 280
    const v46, 0x7f080399

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 282
    :cond_241
    const v46, 0x7f08039a

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 284
    :cond_24e
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_265

    .line 285
    const v46, 0x7f08039b

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 287
    :cond_265
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_27c

    .line 288
    const v46, 0x7f08039c

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 290
    :cond_27c
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_293

    .line 291
    const v46, 0x7f08039d

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 293
    :cond_293
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2aa

    .line 294
    const v46, 0x7f08039e

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 296
    :cond_2aa
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2d7

    .line 297
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2ca

    .line 298
    const v46, 0x7f0803a0

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 300
    :cond_2ca
    const v46, 0x7f08039f

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 302
    :cond_2d7
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2fa

    const-string v46, "CN"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2fa

    .line 303
    const v46, 0x7f0803a2

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 305
    :cond_2fa
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_31d

    const-string v46, "TW"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_31d

    .line 306
    const v46, 0x7f0803a1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 308
    :cond_31d
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_334

    .line 309
    const v46, 0x7f0803a3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 311
    :cond_334
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_34b

    .line 312
    const v46, 0x7f0803a4

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 314
    :cond_34b
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_362

    .line 315
    const v46, 0x7f0803a5

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 317
    :cond_362
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_379

    .line 318
    const v46, 0x7f0803a6

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 320
    :cond_379
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_390

    .line 321
    const v46, 0x7f0803a7

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 323
    :cond_390
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3a7

    .line 324
    const v46, 0x7f0803a8

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 326
    :cond_3a7
    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3be

    .line 327
    const v46, 0x7f0803a9

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 329
    :cond_3be
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3d5

    .line 330
    const v46, 0x7f0803aa

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 332
    :cond_3d5
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3ec

    .line 333
    const v46, 0x7f0803ab

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 335
    :cond_3ec
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_76

    .line 336
    const v46, 0x7f0803ac

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_76

    .line 343
    :cond_403
    const-string v46, "LocalePicker"

    const-string v47, "displayLnguage is NULL!!!"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual/range {p3 .. p3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/android/settings/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    goto/16 :goto_96
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p0

    .line 354
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method getContentView()I
    .registers 2

    .prologue
    .line 62
    const v0, 0x7f03001f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 26
    .parameter "icicle"

    .prologue
    .line 67
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getContentView()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePicker;->setContentView(I)V

    .line 122
    const/16 v16, 0x0

    .line 123
    .local v16, locales:[Ljava/lang/String;
    const-string v5, "en,en_IE,en_AU,fr,fr_CA,fr_CH,fr_BE,de,de_CH,it,it_CH,es,es_MX,nl_BE,sv,da,pt,pt_BR,pl,el,cs,iw,ru_IL,zh_CN,zh_TW,ko,ar,tr"

    .line 124
    .local v5, DefaultLocales:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "LANGUAGE_ISO_COUNTRY_LANG_I"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 126
    .local v20, supportLanguages:Ljava/lang/String;
    if-nez v20, :cond_75

    .line 127
    const-string v21, "LocalePicker"

    const-string v22, "supportLanguages is NULL!!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v21, ","

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 136
    :goto_2e
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    .line 137
    .local v17, origSize:I
    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v18, v0

    .line 138
    .local v18, preprocess:[Lcom/android/settings/LocalePicker$Loc;
    const/4 v9, 0x0

    .line 139
    .local v9, finalSize:I
    const/4 v11, 0x0

    .local v11, i:I
    move v10, v9

    .end local v9           #finalSize:I
    .local v10, finalSize:I
    :goto_3c
    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_d8

    .line 140
    aget-object v19, v16, v11

    .line 141
    .local v19, s:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v15

    .line 142
    .local v15, len:I
    const/16 v21, 0x2

    move v0, v15

    move/from16 v1, v21

    if-ne v0, v1, :cond_98

    .line 143
    new-instance v12, Ljava/util/Locale;

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 144
    .local v12, l:Ljava/util/Locale;
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v21, Lcom/android/settings/LocalePicker$Loc;

    const-string v22, "defaultCountry"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/LocalePicker;->getDisplayLanguageByISO(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v21, v18, v10

    .line 139
    .end local v12           #l:Ljava/util/Locale;
    :goto_71
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    goto :goto_3c

    .line 131
    .end local v10           #finalSize:I
    .end local v11           #i:I
    .end local v15           #len:I
    .end local v17           #origSize:I
    .end local v18           #preprocess:[Lcom/android/settings/LocalePicker$Loc;
    .end local v19           #s:Ljava/lang/String;
    :cond_75
    const-string v21, "LocalePicker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "supportLanguages= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    goto :goto_2e

    .line 145
    .restart local v10       #finalSize:I
    .restart local v11       #i:I
    .restart local v15       #len:I
    .restart local v17       #origSize:I
    .restart local v18       #preprocess:[Lcom/android/settings/LocalePicker$Loc;
    .restart local v19       #s:Ljava/lang/String;
    :cond_98
    const/16 v21, 0x5

    move v0, v15

    move/from16 v1, v21

    if-ne v0, v1, :cond_116

    .line 146
    const/16 v21, 0x0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 147
    .local v13, language:Ljava/lang/String;
    const/16 v21, 0x3

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, country:Ljava/lang/String;
    new-instance v12, Ljava/util/Locale;

    invoke-direct {v12, v13, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .restart local v12       #l:Ljava/util/Locale;
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v21, Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v7

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/LocalePicker;->getDisplayLanguageByISO(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LocalePicker$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v21, v18, v10

    goto :goto_71

    .line 156
    .end local v7           #country:Ljava/lang/String;
    .end local v9           #finalSize:I
    .end local v12           #l:Ljava/util/Locale;
    .end local v13           #language:Ljava/lang/String;
    .end local v15           #len:I
    .end local v19           #s:Ljava/lang/String;
    .restart local v10       #finalSize:I
    :cond_d8
    move v0, v10

    new-array v0, v0, [Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    .line 157
    const/4 v11, 0x0

    :goto_e4
    if-ge v11, v10, :cond_f3

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v21, v0

    aget-object v22, v18, v11

    aput-object v22, v21, v11

    .line 157
    add-int/lit8 v11, v11, 0x1

    goto :goto_e4

    .line 160
    :cond_f3
    const v14, 0x7f030021

    .line 161
    .local v14, layoutId:I
    const v8, 0x7f0a0071

    .line 162
    .local v8, fieldId:I
    new-instance v6, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    move-object/from16 v21, v0

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v14

    move v3, v8

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 163
    .local v6, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/settings/LocalePicker$Loc;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    return-void

    .end local v6           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/settings/LocalePicker$Loc;>;"
    .end local v8           #fieldId:I
    .end local v14           #layoutId:I
    .restart local v15       #len:I
    .restart local v19       #s:Ljava/lang/String;
    :cond_116
    move v9, v10

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    goto/16 :goto_71
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 408
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_20

    const-string v2, "SetupWizard"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 409
    .local v1, value:Ljava/lang/String;
    :goto_11
    if-eqz v1, :cond_28

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 411
    const/4 v2, 0x4

    if-ne p1, v2, :cond_23

    .line 413
    const/4 v2, 0x1

    .line 419
    :goto_1f
    return v2

    .line 408
    .end local v1           #value:Ljava/lang/String;
    :cond_20
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_11

    .line 416
    .restart local v1       #value:Ljava/lang/String;
    :cond_23
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1f

    .line 419
    :cond_28
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1f
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 15
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 366
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 367
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 369
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v6, p0, Lcom/android/settings/LocalePicker;->mLocales:[Lcom/android/settings/LocalePicker$Loc;

    aget-object v3, v6, p3

    .line 370
    .local v3, loc:Lcom/android/settings/LocalePicker$Loc;
    iget-object v6, v3, Lcom/android/settings/LocalePicker$Loc;->locale:Ljava/util/Locale;

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 371
    const-string v6, "LocalePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selcted Language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | Country: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 376
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_44} :catch_84

    .line 381
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #loc:Lcom/android/settings/LocalePicker$Loc;
    :goto_44
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 382
    .local v4, myExtras:Landroid/os/Bundle;
    if-eqz v4, :cond_79

    const-string v6, "SetupWizard"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 383
    .local v5, value:Ljava/lang/String;
    :goto_55
    if-eqz v5, :cond_80

    .line 385
    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 387
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v2, datetime:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.DateTimeSettingsSetupWizard"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v6, "SetupWizard"

    const-string v7, "true"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0, v2}, Lcom/android/settings/LocalePicker;->startActivity(Landroid/content/Intent;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->finish()V

    .line 403
    .end local v2           #datetime:Landroid/content/Intent;
    :goto_78
    return-void

    .line 382
    .end local v5           #value:Ljava/lang/String;
    :cond_79
    const/4 v6, 0x0

    move-object v5, v6

    goto :goto_55

    .line 394
    .restart local v5       #value:Ljava/lang/String;
    :cond_7c
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->finish()V

    goto :goto_78

    .line 399
    :cond_80
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->finish()V

    goto :goto_78

    .line 377
    .end local v4           #myExtras:Landroid/os/Bundle;
    .end local v5           #value:Ljava/lang/String;
    :catch_84
    move-exception v6

    goto :goto_44
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 359
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 361
    return-void
.end method
