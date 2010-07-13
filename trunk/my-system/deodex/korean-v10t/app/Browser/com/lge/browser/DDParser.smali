.class public Lcom/lge/browser/DDParser;
.super Lorg/xml/sax/HandlerBase;
.source "DDParser.java"


# static fields
.field public static final PARSINGSTATE_DDVERSION:I = 0x8

.field public static final PARSINGSTATE_DESCRIPTION:I = 0x7

.field public static final PARSINGSTATE_INSTALLNOTIFYURL:I = 0x5

.field public static final PARSINGSTATE_MEDIA:I = 0x0

.field public static final PARSINGSTATE_NAME:I = 0x3

.field public static final PARSINGSTATE_NEXTURL:I = 0x9

.field public static final PARSINGSTATE_OBJECTURL:I = 0x4

.field public static final PARSINGSTATE_PROGRESSIVEFLAG:I = 0xa

.field public static final PARSINGSTATE_SIZE:I = 0x2

.field public static final PARSINGSTATE_TYPE:I = 0x1

.field public static final PARSINGSTATE_UNKNOWN:I = 0xb

.field public static final PARSINGSTATE_VENDOR:I = 0x6


# instance fields
.field public ddversion:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public installNotifyURL:Ljava/lang/String;

.field locator:Lorg/xml/sax/Locator;

.field public mimeTypes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public nextURL:Ljava/lang/String;

.field public objectURL:Ljava/lang/String;

.field private parsingState:I

.field public progressiveDownloadFlag:Z

.field public size:I

.field public vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lorg/xml/sax/HandlerBase;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    .line 69
    iput-object v0, p0, Lcom/lge/browser/DDParser;->description:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/lge/browser/DDParser;->size:I

    .line 71
    iput-object v0, p0, Lcom/lge/browser/DDParser;->vendor:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/lge/browser/DDParser;->progressiveDownloadFlag:Z

    .line 74
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .parameter "cbuf"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 184
    iget v1, p0, Lcom/lge/browser/DDParser;->parsingState:I

    packed-switch v1, :pswitch_data_134

    .line 239
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 188
    :pswitch_6
    iget-object v1, p0, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    if-nez v1, :cond_11

    .line 189
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    .line 190
    :cond_11
    iget-object v1, p0, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    .line 193
    :pswitch_1c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lge/browser/DDParser;->size:I

    goto :goto_5

    .line 196
    :pswitch_28
    iget-object v1, p0, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    if-nez v1, :cond_34

    .line 197
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    goto :goto_5

    .line 199
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    goto :goto_5

    .line 202
    :pswitch_4f
    iget-object v1, p0, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    if-nez v1, :cond_5b

    .line 203
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    goto :goto_5

    .line 205
    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    goto :goto_5

    .line 208
    :pswitch_76
    iget-object v1, p0, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    if-nez v1, :cond_82

    .line 209
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    goto :goto_5

    .line 211
    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    goto/16 :goto_5

    .line 214
    :pswitch_9e
    iget-object v1, p0, Lcom/lge/browser/DDParser;->vendor:Ljava/lang/String;

    if-nez v1, :cond_ab

    .line 215
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/lge/browser/DDParser;->vendor:Ljava/lang/String;

    goto/16 :goto_5

    .line 217
    :cond_ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/browser/DDParser;->vendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/browser/DDParser;->vendor:Ljava/lang/String;

    goto/16 :goto_5

    .line 220
    :pswitch_c7
    iget-object v1, p0, Lcom/lge/browser/DDParser;->description:Ljava/lang/String;

    if-nez v1, :cond_d4

    .line 221
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/lge/browser/DDParser;->description:Ljava/lang/String;

    goto/16 :goto_5

    .line 223
    :cond_d4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/browser/DDParser;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/browser/DDParser;->description:Ljava/lang/String;

    goto/16 :goto_5

    .line 226
    :pswitch_f0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/lge/browser/DDParser;->ddversion:Ljava/lang/String;

    goto/16 :goto_5

    .line 229
    :pswitch_f9
    iget-object v1, p0, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    if-nez v1, :cond_106

    .line 230
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    goto/16 :goto_5

    .line 232
    :cond_106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    goto/16 :goto_5

    .line 235
    :pswitch_122
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 236
    .local v0, flag:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/browser/DDParser;->progressiveDownloadFlag:Z

    goto/16 :goto_5

    .line 184
    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_1c
        :pswitch_28
        :pswitch_4f
        :pswitch_76
        :pswitch_9e
        :pswitch_c7
        :pswitch_f0
        :pswitch_f9
        :pswitch_122
    .end packed-switch
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v3, "Invalid DD"

    .line 128
    if-nez p1, :cond_12

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_12
    iget v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    packed-switch v0, :pswitch_data_172

    .line 179
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :pswitch_24
    const-string v0, "media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_39
    iget-object v0, p0, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_52

    :cond_45
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_52
    iget-object v0, p0, Lcom/lge/browser/DDParser;->ddversion:Ljava/lang/String;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/lge/browser/DDParser;->ddversion:Ljava/lang/String;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD Version"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_6d
    iget-object v0, p0, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    if-nez v0, :cond_95

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :pswitch_7e
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_93

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_93
    iput v1, p0, Lcom/lge/browser/DDParser;->parsingState:I

    .line 181
    :cond_95
    :goto_95
    return-void

    .line 143
    :pswitch_96
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ab

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_ab
    iput v1, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_95

    .line 147
    :pswitch_ae
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c3

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_c3
    iput v1, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_95

    .line 151
    :pswitch_c6
    const-string v0, "objecturi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_db

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_db
    iput v1, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_95

    .line 155
    :pswitch_de
    const-string v0, "installnotifyuri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f3

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_f3
    iput v1, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_95

    .line 159
    :pswitch_f6
    const-string v0, "vendor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10b

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_10b
    iput v1, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_95

    .line 163
    :pswitch_10e
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_123

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_123
    iput v1, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto/16 :goto_95

    .line 167
    :pswitch_127
    const-string v0, "ddversion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13c

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_13c
    iput v1, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto/16 :goto_95

    .line 171
    :pswitch_140
    const-string v0, "nexturl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_155

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_155
    iput v1, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto/16 :goto_95

    .line 175
    :pswitch_159
    const-string v0, "progressivedownloadflag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16e

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_16e
    iput v1, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto/16 :goto_95

    .line 129
    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_24
        :pswitch_7e
        :pswitch_96
        :pswitch_ae
        :pswitch_c6
        :pswitch_de
        :pswitch_f6
        :pswitch_10e
        :pswitch_127
        :pswitch_140
        :pswitch_159
    .end packed-switch
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .registers 4
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 4
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .parameter "cbuf"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 243
    return-void
.end method

.method public notationDec1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "publicID"
    .parameter "systemID"

    .prologue
    .line 256
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 247
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 4
    .parameter "publicID"
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/browser/DDParser;->locator:Lorg/xml/sax/Locator;

    .line 78
    return-void
.end method

.method public startDocument()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 6
    .parameter "name"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_f

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/String;

    const-string v2, "Invalid DD"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_f
    const-string v0, "media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    .line 125
    :goto_1a
    return-void

    .line 92
    :cond_1b
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_1a

    .line 95
    :cond_27
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_1a

    .line 98
    :cond_33
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_1a

    .line 101
    :cond_3f
    const-string v0, "objecturi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 102
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_1a

    .line 104
    :cond_4b
    const-string v0, "installnotifyuri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 105
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_1a

    .line 107
    :cond_57
    const-string v0, "vendor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 108
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_1a

    .line 110
    :cond_63
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 111
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_1a

    .line 113
    :cond_6f
    const-string v0, "ddversion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 114
    const/16 v0, 0x8

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_1a

    .line 116
    :cond_7c
    const-string v0, "nexturl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 117
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_1a

    .line 119
    :cond_89
    const-string v0, "progressivedownloadflag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 120
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_1a

    .line 123
    :cond_96
    const/16 v0, 0xb

    iput v0, p0, Lcom/lge/browser/DDParser;->parsingState:I

    goto :goto_1a
.end method

.method public unparsedEntityDec1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "publicID"
    .parameter "systemID"
    .parameter "notationName"

    .prologue
    .line 260
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 264
    return-void
.end method
