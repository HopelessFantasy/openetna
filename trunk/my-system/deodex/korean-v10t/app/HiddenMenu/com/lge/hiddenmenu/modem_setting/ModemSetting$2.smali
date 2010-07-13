.class Lcom/lge/hiddenmenu/modem_setting/ModemSetting$2;
.super Ljava/lang/Object;
.source "ModemSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->selectMenuItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/modem_setting/ModemSetting;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/modem_setting/ModemSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$2;->this$0:Lcom/lge/hiddenmenu/modem_setting/ModemSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const-string v5, "1"

    .line 117
    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$2;->this$0:Lcom/lge/hiddenmenu/modem_setting/ModemSetting;

    iget-object v3, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$2;->this$0:Lcom/lge/hiddenmenu/modem_setting/ModemSetting;

    invoke-static {v3}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->access$000(Lcom/lge/hiddenmenu/modem_setting/ModemSetting;)Z

    move-result v3

    if-nez v3, :cond_44

    const/4 v3, 0x1

    :goto_d
    invoke-static {v2, v3}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->access$002(Lcom/lge/hiddenmenu/modem_setting/ModemSetting;Z)Z

    .line 121
    :try_start_10
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->file1:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v2, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->etm_writer:Ljava/io/BufferedWriter;

    .line 122
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$2;->this$0:Lcom/lge/hiddenmenu/modem_setting/ModemSetting;

    invoke-static {v2}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->access$000(Lcom/lge/hiddenmenu/modem_setting/ModemSetting;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "1"

    move-object v2, v5

    :goto_2b
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, Item:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$2;->this$0:Lcom/lge/hiddenmenu/modem_setting/ModemSetting;

    invoke-virtual {v2, v0}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->WriteStringToFile(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$2;->this$0:Lcom/lge/hiddenmenu/modem_setting/ModemSetting;

    iget-object v3, p0, Lcom/lge/hiddenmenu/modem_setting/ModemSetting$2;->this$0:Lcom/lge/hiddenmenu/modem_setting/ModemSetting;

    invoke-static {v3}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->access$000(Lcom/lge/hiddenmenu/modem_setting/ModemSetting;)Z

    move-result v3

    if-eqz v3, :cond_49

    const-string v3, "1"

    move-object v3, v5

    :goto_40
    invoke-virtual {v2, v3}, Lcom/lge/hiddenmenu/modem_setting/ModemSetting;->SetLoggerPriority(Ljava/lang/String;)V

    .line 144
    .end local v0           #Item:Ljava/lang/String;
    :goto_43
    return-void

    .line 117
    :cond_44
    const/4 v3, 0x0

    goto :goto_d

    .line 122
    :cond_46
    const-string v2, "0"

    goto :goto_2b

    .line 124
    .restart local v0       #Item:Ljava/lang/String;
    :cond_49
    const-string v3, "8"
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4b} :catch_4c

    goto :goto_40

    .line 125
    .end local v0           #Item:Ljava/lang/String;
    :catch_4c
    move-exception v2

    move-object v1, v2

    .line 126
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43
.end method
