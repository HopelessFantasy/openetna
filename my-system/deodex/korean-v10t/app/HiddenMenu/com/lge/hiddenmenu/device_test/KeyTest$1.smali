.class Lcom/lge/hiddenmenu/device_test/KeyTest$1;
.super Ljava/lang/Object;
.source "KeyTest.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/KeyTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/KeyTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/KeyTest;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/KeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/KeyTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 115
    const-string v6, "Unknown"

    .line 116
    .local v6, str:Ljava/lang/String;
    packed-switch p2, :pswitch_data_190

    .line 416
    :pswitch_6
    const-string v6, "Unknown Key"

    .line 420
    :cond_8
    :goto_8
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/KeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/KeyTest;

    iget-object v7, v7, Lcom/lge/hiddenmenu/device_test/KeyTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v7, v9

    .line 422
    :goto_10
    return v7

    .line 118
    :pswitch_11
    const-string v6, "SOFT LEFT"

    .line 119
    goto :goto_8

    .line 121
    :pswitch_14
    const-string v6, "SOFT RIGHT"

    .line 122
    goto :goto_8

    .line 124
    :pswitch_17
    const-string v6, "HOME"

    .line 125
    goto :goto_8

    .line 127
    :pswitch_1a
    const-string v6, "BACK"

    .line 128
    const/4 v7, 0x0

    goto :goto_10

    .line 130
    :pswitch_1e
    const-string v6, "CALL"

    .line 131
    goto :goto_8

    .line 133
    :pswitch_21
    const-string v6, "END CALL"

    .line 134
    goto :goto_8

    .line 136
    :pswitch_24
    const-string v6, "0"

    .line 137
    goto :goto_8

    .line 139
    :pswitch_27
    const-string v6, "1"

    .line 140
    goto :goto_8

    .line 142
    :pswitch_2a
    const-string v6, "2"

    .line 143
    goto :goto_8

    .line 145
    :pswitch_2d
    const-string v6, "3"

    .line 146
    goto :goto_8

    .line 148
    :pswitch_30
    const-string v6, "4"

    .line 149
    goto :goto_8

    .line 151
    :pswitch_33
    const-string v6, "5"

    .line 152
    goto :goto_8

    .line 154
    :pswitch_36
    const-string v6, "6"

    .line 155
    goto :goto_8

    .line 157
    :pswitch_39
    const-string v6, "7"

    .line 158
    goto :goto_8

    .line 160
    :pswitch_3c
    const-string v6, "8"

    .line 161
    goto :goto_8

    .line 163
    :pswitch_3f
    const-string v6, "9"

    .line 164
    goto :goto_8

    .line 166
    :pswitch_42
    const-string v6, "*"

    .line 167
    goto :goto_8

    .line 169
    :pswitch_45
    const-string v6, "#"

    .line 170
    goto :goto_8

    .line 172
    :pswitch_48
    const-string v6, "UP"

    .line 173
    goto :goto_8

    .line 175
    :pswitch_4b
    const-string v6, "DOWN"

    .line 176
    goto :goto_8

    .line 178
    :pswitch_4e
    const-string v6, "LEFT"

    .line 179
    goto :goto_8

    .line 181
    :pswitch_51
    const-string v6, "RIGHT"

    .line 182
    goto :goto_8

    .line 184
    :pswitch_54
    const-string v6, "CENTER"

    .line 185
    goto :goto_8

    .line 187
    :pswitch_57
    const-string v6, "VOLUME UP"

    .line 188
    goto :goto_8

    .line 190
    :pswitch_5a
    const-string v6, "VOLUME DOWN"

    .line 191
    goto :goto_8

    .line 193
    :pswitch_5d
    const-string v6, "POWER"

    .line 194
    goto :goto_8

    .line 196
    :pswitch_60
    const-string v6, "CAMERA"

    .line 197
    goto :goto_8

    .line 199
    :pswitch_63
    const-string v6, "CLEAR"

    .line 200
    goto :goto_8

    .line 202
    :pswitch_66
    const-string v6, "A"

    .line 203
    goto :goto_8

    .line 205
    :pswitch_69
    const-string v6, "B"

    .line 206
    goto :goto_8

    .line 208
    :pswitch_6c
    const-string v6, "C"

    .line 209
    goto :goto_8

    .line 211
    :pswitch_6f
    const-string v6, "D"

    .line 212
    goto :goto_8

    .line 214
    :pswitch_72
    const-string v6, "E"

    .line 215
    goto :goto_8

    .line 217
    :pswitch_75
    const-string v6, "F"

    .line 218
    goto :goto_8

    .line 220
    :pswitch_78
    const-string v6, "G"

    .line 221
    goto :goto_8

    .line 223
    :pswitch_7b
    const-string v6, "H"

    .line 224
    goto :goto_8

    .line 226
    :pswitch_7e
    const-string v6, "I"

    .line 227
    goto :goto_8

    .line 229
    :pswitch_81
    const-string v6, "J"

    .line 230
    goto :goto_8

    .line 232
    :pswitch_84
    const-string v6, "K"

    .line 233
    goto :goto_8

    .line 235
    :pswitch_87
    const-string v6, "L"

    .line 236
    goto/16 :goto_8

    .line 238
    :pswitch_8b
    const-string v6, "M"

    .line 239
    goto/16 :goto_8

    .line 241
    :pswitch_8f
    const-string v6, "N"

    .line 242
    goto/16 :goto_8

    .line 244
    :pswitch_93
    const-string v6, "O"

    .line 245
    goto/16 :goto_8

    .line 247
    :pswitch_97
    const-string v6, "P"

    .line 248
    goto/16 :goto_8

    .line 250
    :pswitch_9b
    const-string v6, "Q"

    .line 251
    goto/16 :goto_8

    .line 253
    :pswitch_9f
    const-string v6, "R"

    .line 254
    goto/16 :goto_8

    .line 256
    :pswitch_a3
    const-string v6, "S"

    .line 257
    goto/16 :goto_8

    .line 259
    :pswitch_a7
    const-string v6, "T"

    .line 260
    goto/16 :goto_8

    .line 262
    :pswitch_ab
    const-string v6, "U"

    .line 263
    goto/16 :goto_8

    .line 265
    :pswitch_af
    const-string v6, "V"

    .line 266
    goto/16 :goto_8

    .line 268
    :pswitch_b3
    const-string v6, "W"

    .line 269
    goto/16 :goto_8

    .line 271
    :pswitch_b7
    const-string v6, "X"

    .line 272
    goto/16 :goto_8

    .line 274
    :pswitch_bb
    const-string v6, "Y"

    .line 275
    goto/16 :goto_8

    .line 277
    :pswitch_bf
    const-string v6, "Z"

    .line 278
    goto/16 :goto_8

    .line 280
    :pswitch_c3
    const-string v6, ","

    .line 281
    goto/16 :goto_8

    .line 283
    :pswitch_c7
    const-string v6, "."

    .line 284
    goto/16 :goto_8

    .line 286
    :pswitch_cb
    const-string v6, "LEFT ALT"

    .line 287
    goto/16 :goto_8

    .line 289
    :pswitch_cf
    const-string v6, "RIGHT ALT"

    .line 290
    goto/16 :goto_8

    .line 292
    :pswitch_d3
    const-string v6, "LEFT SHIFT"

    .line 293
    goto/16 :goto_8

    .line 295
    :pswitch_d7
    const-string v6, "RIGHT SHIFT"

    .line 296
    goto/16 :goto_8

    .line 298
    :pswitch_db
    const-string v6, "TAB"

    .line 299
    goto/16 :goto_8

    .line 301
    :pswitch_df
    const-string v6, "SPACE"

    .line 302
    goto/16 :goto_8

    .line 304
    :pswitch_e3
    const-string v6, "SYM"

    .line 305
    goto/16 :goto_8

    .line 307
    :pswitch_e7
    const-string v6, "EXPLORER"

    .line 308
    goto/16 :goto_8

    .line 310
    :pswitch_eb
    const-string v6, "ENVELOPE"

    .line 311
    goto/16 :goto_8

    .line 313
    :pswitch_ef
    const-string v6, "ENTER"

    .line 314
    goto/16 :goto_8

    .line 316
    :pswitch_f3
    const-string v6, "DEL"

    .line 317
    goto/16 :goto_8

    .line 319
    :pswitch_f7
    const-string v6, "GRAVE"

    .line 320
    goto/16 :goto_8

    .line 322
    :pswitch_fb
    const-string v6, "-"

    .line 323
    goto/16 :goto_8

    .line 325
    :pswitch_ff
    const-string v6, "="

    .line 326
    goto/16 :goto_8

    .line 328
    :pswitch_103
    const-string v6, "{"

    .line 329
    goto/16 :goto_8

    .line 331
    :pswitch_107
    const-string v6, "}"

    .line 332
    goto/16 :goto_8

    .line 334
    :pswitch_10b
    const-string v6, "\\"

    .line 335
    goto/16 :goto_8

    .line 337
    :pswitch_10f
    const-string v6, ";"

    .line 338
    goto/16 :goto_8

    .line 340
    :pswitch_113
    const-string v6, "\'"

    .line 341
    goto/16 :goto_8

    .line 343
    :pswitch_117
    const-string v6, "/"

    .line 344
    goto/16 :goto_8

    .line 346
    :pswitch_11b
    const-string v6, "@"

    .line 347
    goto/16 :goto_8

    .line 349
    :pswitch_11f
    const-string v6, "NUM"

    .line 350
    goto/16 :goto_8

    .line 352
    :pswitch_123
    const-string v6, "HEADSET HOOK"

    .line 353
    goto/16 :goto_8

    .line 355
    :pswitch_127
    const-string v6, "FOCUS"

    .line 356
    goto/16 :goto_8

    .line 358
    :pswitch_12b
    const-string v6, "+"

    .line 359
    goto/16 :goto_8

    .line 361
    :pswitch_12f
    const-string v6, "SEARCH"

    .line 362
    goto/16 :goto_8

    .line 364
    :pswitch_133
    const-string v6, "MENU"

    .line 369
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/KeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/KeyTest;

    iget-object v7, v7, Lcom/lge/hiddenmenu/device_test/KeyTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_8

    .line 370
    const-string v4, "com.lge.hiddenmenu"

    .line 371
    .local v4, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 373
    .local v2, className:Ljava/lang/String;
    const/4 v5, 0x0

    .line 374
    .local v5, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 375
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 377
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".device_test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    const-string v2, "QwertyTest"

    .line 380
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/KeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/KeyTest;

    invoke-virtual {v7}, Lcom/lge/hiddenmenu/device_test/KeyTest;->finish()V

    .line 381
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 383
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/KeyTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/KeyTest;

    invoke-virtual {v7, v3}, Lcom/lge/hiddenmenu/device_test/KeyTest;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 413
    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #packageName2:Ljava/lang/String;
    :pswitch_18c
    const-string v6, "FOCUS"

    .line 414
    goto/16 :goto_8

    .line 116
    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_5d
        :pswitch_60
        :pswitch_63
        :pswitch_66
        :pswitch_69
        :pswitch_6c
        :pswitch_6f
        :pswitch_72
        :pswitch_75
        :pswitch_78
        :pswitch_7b
        :pswitch_7e
        :pswitch_81
        :pswitch_84
        :pswitch_87
        :pswitch_8b
        :pswitch_8f
        :pswitch_93
        :pswitch_97
        :pswitch_9b
        :pswitch_9f
        :pswitch_a3
        :pswitch_a7
        :pswitch_ab
        :pswitch_af
        :pswitch_b3
        :pswitch_b7
        :pswitch_bb
        :pswitch_bf
        :pswitch_c3
        :pswitch_c7
        :pswitch_cb
        :pswitch_cf
        :pswitch_d3
        :pswitch_d7
        :pswitch_db
        :pswitch_df
        :pswitch_e3
        :pswitch_e7
        :pswitch_eb
        :pswitch_ef
        :pswitch_f3
        :pswitch_f7
        :pswitch_fb
        :pswitch_ff
        :pswitch_103
        :pswitch_107
        :pswitch_10b
        :pswitch_10f
        :pswitch_113
        :pswitch_117
        :pswitch_11b
        :pswitch_11f
        :pswitch_123
        :pswitch_127
        :pswitch_12b
        :pswitch_133
        :pswitch_6
        :pswitch_12f
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_18c
    .end packed-switch
.end method
