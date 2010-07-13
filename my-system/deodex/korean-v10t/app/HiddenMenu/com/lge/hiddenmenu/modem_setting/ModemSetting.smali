.class public Lcom/lge/hiddenmenu/modem_setting/ModemSetting;
.super Landroid/app/ListActivity;
.source "ModemSetting.java"


# static fields
.field private static final EVENT_SET_NVDB_UPDATE_COMPLETED:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ModemSetting"

.field public static etm_writer:Ljava/io/BufferedWriter; = null

.field public static file1:Ljava/io/File; = null

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private DebugEnabled:Z

.field private TraceEnabled:Z

.field private final fn_log_events:Ljava/lang/String;

.field private final fn_log_main:Ljava/lang/String;

.field private final fn_log_radio:Ljava/lang/String;

.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/nv/QCRilLog_flag"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->file1:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->TraceEnabled:Z

    .line 51
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->DebugEnabled:Z

    .line 56
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/kernel/logger/log_main/priority"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->fn_log_main:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/kernel/logger/log_events/priority"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->fn_log_events:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/kernel/logger/log_radio/priority"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->fn_log_radio:Ljava/lang/String;

    .line 244
    new-instance v0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$3;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$3;-><init>(Lcom/lge/hiddenmenu/modem_setting/ModemSetting;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/modem_setting/ModemSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->DebugEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/modem_setting/ModemSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->DebugEnabled:Z

    return p1
.end method

.method private selectMenuItem(I)V
    .registers 8
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 95
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 97
    .local v2, packageName2:Ljava/lang/String;
    packed-switch p1, :pswitch_data_94

    .line 186
    :goto_b
    :pswitch_b
    if-eqz v0, :cond_2c

    .line 187
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

    .line 188
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->startActivity(Landroid/content/Intent;)V

    .line 190
    :cond_2c
    return-void

    .line 99
    :pswitch_2d
    const-string v2, "com.lge.hiddenmenu.modem_setting"

    .line 100
    const-string v0, "EngMode"

    .line 101
    goto :goto_b

    .line 104
    :pswitch_32
    const-string v2, "com.lge.hiddenmenu.modem_setting"

    .line 105
    const-string v0, "RRCVerSetting"

    .line 106
    goto :goto_b

    .line 110
    :pswitch_37
    sget-object v3, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->file1:Ljava/io/File;

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->ReadIntFromFile(Ljava/io/File;)I

    move-result v3

    if-ne v3, v4, :cond_74

    move v3, v4

    :goto_40
    iput-boolean v3, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->DebugEnabled:Z

    .line 111
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02003a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->DebugEnabled:Z

    if-eqz v4, :cond_76

    const-string v4, "QCRil Log Off?"

    :goto_54
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800fe

    new-instance v5, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$2;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$2;-><init>(Lcom/lge/hiddenmenu/modem_setting/ModemSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800ff

    new-instance v5, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$1;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$1;-><init>(Lcom/lge/hiddenmenu/modem_setting/ModemSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_b

    .line 110
    :cond_74
    const/4 v3, 0x0

    goto :goto_40

    .line 111
    :cond_76
    const-string v4, "QCRil Log On?"

    goto :goto_54

    .line 156
    :pswitch_79
    const-string v2, "com.lge.hiddenmenu.modem_setting"

    .line 157
    const-string v0, "PDPSetting"

    .line 158
    goto :goto_b

    .line 161
    :pswitch_7e
    const-string v2, "com.lge.hiddenmenu.modem_setting"

    .line 162
    const-string v0, "HSDPACatSetting"

    .line 163
    goto :goto_b

    .line 166
    :pswitch_83
    const-string v2, "com.lge.hiddenmenu.modem_setting"

    .line 167
    const-string v0, "A5_NV_Setting"

    .line 168
    goto :goto_b

    .line 174
    :pswitch_88
    const-string v2, "com.lge.hiddenmenu.modem_setting"

    .line 175
    const-string v0, "GCFFlagSetting"

    .line 176
    goto/16 :goto_b

    .line 179
    :pswitch_8e
    const-string v2, "com.lge.hiddenmenu.modem_setting"

    .line 180
    const-string v0, "Arm9LogSetting"

    .line 181
    goto/16 :goto_b

    .line 97
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_32
        :pswitch_37
        :pswitch_79
        :pswitch_7e
        :pswitch_83
        :pswitch_b
        :pswitch_88
        :pswitch_8e
    .end packed-switch
.end method


# virtual methods
.method public ReadIntFromFile(Ljava/io/File;)I
    .registers 7
    .parameter "FileName"

    .prologue
    .line 230
    const/4 v3, 0x0

    .line 232
    .local v3, result:I
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 233
    .local v2, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, in:Ljava/lang/String;
    if-nez v1, :cond_13

    const/4 v3, 0x0

    .line 242
    .end local v1           #in:Ljava/lang/String;
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :goto_12
    return v3

    .line 237
    .restart local v1       #in:Ljava/lang/String;
    .restart local v2       #inReader:Ljava/io/BufferedReader;
    :cond_13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_18

    move-result v3

    goto :goto_12

    .line 238
    .end local v1           #in:Ljava/lang/String;
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :catch_18
    move-exception v4

    move-object v0, v4

    .line 240
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method public SetLoggerPriority(Ljava/lang/String;)V
    .registers 3
    .parameter "priority"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->fn_log_main:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->WriteLoggerPriority(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->fn_log_events:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->WriteLoggerPriority(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->fn_log_radio:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->WriteLoggerPriority(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public WriteLoggerPriority(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "filename"
    .parameter "priority"

    .prologue
    .line 204
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 205
    .local v0, BufWriter:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p2, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 206
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 207
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    .line 211
    .end local v0           #BufWriter:Ljava/io/BufferedWriter;
    :goto_18
    return-void

    .line 208
    :catch_19
    move-exception v2

    move-object v1, v2

    .line 209
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18
.end method

.method public WriteStringToFile(Ljava/lang/String;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 219
    :try_start_0
    sget-object v1, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->etm_writer:Ljava/io/BufferedWriter;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 220
    sget-object v1, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->etm_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 221
    sget-object v1, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->etm_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    .line 225
    :goto_14
    return-void

    .line 222
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 223
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f060007

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 67
    iget-object v0, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 80
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 81
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 84
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
    .line 89
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->selectMenuItem(I)V

    .line 90
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 73
    return-void
.end method
