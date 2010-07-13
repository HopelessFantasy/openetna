.class public Lcom/lge/hiddenmenu/call_test/CallTest;
.super Landroid/app/ListActivity;
.source "CallTest.java"


# static fields
.field private static final DIVIDER_HOUR:J = 0x36ee80L

.field private static final DIVIDER_MIN:J = 0xea60L

.field private static final DIVIDER_SEC:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "CallTest"

.field private static final callDurationFile:Ljava/lang/String; = "/lgdrm/CallDuration"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 84
    return-void
.end method

.method private convertTimeFormat(J)Ljava/lang/String;
    .registers 14
    .parameter "duration"

    .prologue
    .line 93
    const-wide/32 v7, 0x36ee80

    div-long v7, p1, v7

    long-to-int v0, v7

    .line 94
    .local v0, hour:I
    const-wide/32 v7, 0x36ee80

    rem-long v7, p1, v7

    const-wide/32 v9, 0xea60

    div-long/2addr v7, v9

    long-to-int v1, v7

    .line 95
    .local v1, minute:I
    const-wide/32 v7, 0xea60

    rem-long v7, p1, v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v2, v7

    .line 97
    .local v2, second:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, time_hour:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, time_min:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, time_sec:Ljava/lang/String;
    const/16 v7, 0xa

    if-ge v0, v7, :cond_48

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    :cond_48
    const/16 v7, 0xa

    if-ge v1, v7, :cond_5f

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    :cond_5f
    const/16 v7, 0xa

    if-ge v2, v7, :cond_76

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    :cond_76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, summary:Ljava/lang/String;
    return-object v3
.end method

.method private selectMenuItem(I)V
    .registers 8
    .parameter "id"

    .prologue
    .line 147
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 149
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 151
    .local v2, packageName2:Ljava/lang/String;
    packed-switch p1, :pswitch_data_6e

    .line 190
    :goto_a
    if-eqz v0, :cond_2b

    .line 191
    const-string v3, "com.lge.hiddenmenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/call_test/CallTest;->startActivity(Landroid/content/Intent;)V

    .line 195
    :cond_2b
    return-void

    .line 153
    :pswitch_2c
    const-string v2, "com.lge.hiddenmenu.call_test"

    .line 154
    const-string v0, "AutoCallTest"

    .line 155
    goto :goto_a

    .line 159
    :pswitch_31
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02003a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "VC Answer mode"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f06002e

    new-instance v5, Lcom/lge/hiddenmenu/call_test/CallTest$1;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/call_test/CallTest$1;-><init>(Lcom/lge/hiddenmenu/call_test/CallTest;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_a

    .line 180
    :pswitch_53
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Saved call time"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/call_test/CallTest;->readCallDurationFile()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/lge/hiddenmenu/call_test/CallTest;->convertTimeFormat(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_a

    .line 151
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_31
        :pswitch_53
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v0, 0x7f06000a

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/call_test/CallTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 121
    iget-object v0, p0, Lcom/lge/hiddenmenu/call_test/CallTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/call_test/CallTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/lge/hiddenmenu/call_test/CallTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/call_test/CallTest;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 134
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 135
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/call_test/CallTest;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 138
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 143
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/call_test/CallTest;->selectMenuItem(I)V

    .line 144
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 127
    return-void
.end method

.method public readCallDurationFile()J
    .registers 12

    .prologue
    const-string v10, "CallTest"

    .line 58
    const-wide/16 v5, 0x0

    .line 61
    .local v5, result:J
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/lgdrm/CallDuration"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 62
    .local v3, in:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_13} :catch_25
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_47

    move-result-object v7

    .line 64
    .local v7, value:Ljava/lang/String;
    :try_start_14
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_17} :catch_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_17} :catch_25
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_47

    move-result-wide v5

    .line 68
    :goto_18
    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 83
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v7           #value:Ljava/lang/String;
    :goto_1b
    return-wide v5

    .line 65
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v7       #value:Ljava/lang/String;
    :catch_1c
    move-exception v2

    .line 66
    .local v2, e4:Ljava/lang/NumberFormatException;
    const-string v8, "CallTest"

    const-string v9, "read failed: NumberFormatException"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_24} :catch_25
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_47

    goto :goto_18

    .line 69
    .end local v2           #e4:Ljava/lang/NumberFormatException;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v7           #value:Ljava/lang/String;
    :catch_25
    move-exception v8

    move-object v0, v8

    .line 70
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v8, "CallTest"

    const-string v8, "read failed: FileNotFoundException"

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v4, "0"

    .line 73
    .local v4, initValue:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/call_test/CallTest;->writeCallDurationFile(Ljava/lang/String;)V

    .line 76
    :try_start_33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "chmod 666 /lgdrm/CallDuration"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_3d

    goto :goto_1b

    .line 77
    :catch_3d
    move-exception v8

    move-object v1, v8

    .line 78
    .local v1, e3:Ljava/io/IOException;
    const-string v8, "CallTest"

    const-string v8, "chmod failed: IOException"

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 80
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #e3:Ljava/io/IOException;
    .end local v4           #initValue:Ljava/lang/String;
    :catch_47
    move-exception v8

    move-object v0, v8

    .line 81
    .local v0, e:Ljava/io/IOException;
    const-string v8, "CallTest"

    const-string v8, "read failed: IOException"

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public writeCallDurationFile(Ljava/lang/String;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 47
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/lgdrm/CallDuration"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 48
    .local v1, out:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 49
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 50
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 51
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 55
    .end local v1           #out:Ljava/io/BufferedWriter;
    :goto_1d
    return-void

    .line 52
    :catch_1e
    move-exception v2

    move-object v0, v2

    .line 53
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CallTest"

    const-string v3, "write failed: IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
