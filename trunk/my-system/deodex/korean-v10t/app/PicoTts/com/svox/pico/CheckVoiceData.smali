.class public Lcom/svox/pico/CheckVoiceData;
.super Landroid/app/Activity;
.source "CheckVoiceData.java"


# static fields
.field private static final PICO_LINGWARE_PATH:Ljava/lang/String; = "/sdcard/svox/"

.field private static final PICO_SYSTEM_LINGWARE_PATH:Ljava/lang/String; = "/system/tts/lang_pico/"

.field private static final dataFiles:[Ljava/lang/String;

.field private static final dataFilesInfo:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "de-DE_gl0_sg.bin"

    aput-object v1, v0, v3

    const-string v1, "de-DE_ta.bin"

    aput-object v1, v0, v4

    const-string v1, "en-GB_kh0_sg.bin"

    aput-object v1, v0, v5

    const-string v1, "en-GB_ta.bin"

    aput-object v1, v0, v6

    const-string v1, "en-US_lh0_sg.bin"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "en-US_ta.bin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "es-ES_ta.bin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "es-ES_zl0_sg.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fr-FR_nk0_sg.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fr-FR_ta.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "it-IT_cm0_sg.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "it-IT_ta.bin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/svox/pico/CheckVoiceData;->dataFiles:[Ljava/lang/String;

    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "deu-DEU"

    aput-object v1, v0, v3

    const-string v1, "deu-DEU"

    aput-object v1, v0, v4

    const-string v1, "eng-GBR"

    aput-object v1, v0, v5

    const-string v1, "eng-GBR"

    aput-object v1, v0, v6

    const-string v1, "eng-USA"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "eng-USA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "spa-ESP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "spa-ESP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fra-FRA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fra-FRA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ita-ITA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ita-ITA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/svox/pico/CheckVoiceData;->dataFilesInfo:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const-string v7, "/sdcard/svox/"

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v1, 0x1

    .line 55
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    sget-object v5, Lcom/svox/pico/CheckVoiceData;->dataFiles:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_54

    .line 56
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/svox/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/svox/pico/CheckVoiceData;->dataFiles:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v3, tempFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/tts/lang_pico/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/svox/pico/CheckVoiceData;->dataFiles:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v4, tempFileSys:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_51

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_51

    .line 59
    const/4 v1, -0x2

    .line 55
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 64
    .end local v3           #tempFile:Ljava/io/File;
    .end local v4           #tempFileSys:Ljava/io/File;
    :cond_54
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v2, returnData:Landroid/content/Intent;
    const-string v5, "dataRoot"

    const-string v6, "/sdcard/svox/"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v5, "dataFiles"

    sget-object v6, Lcom/svox/pico/CheckVoiceData;->dataFiles:[Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v5, "dataFilesInfo"

    sget-object v6, Lcom/svox/pico/CheckVoiceData;->dataFilesInfo:[Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v1, v2}, Lcom/svox/pico/CheckVoiceData;->setResult(ILandroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/svox/pico/CheckVoiceData;->finish()V

    .line 71
    return-void
.end method
