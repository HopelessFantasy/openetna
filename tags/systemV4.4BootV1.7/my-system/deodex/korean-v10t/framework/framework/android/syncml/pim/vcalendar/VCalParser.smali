.class public Landroid/syncml/pim/vcalendar/VCalParser;
.super Ljava/lang/Object;
.source "VCalParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCalParser"

.field public static final VERSION_VCALENDAR10:Ljava/lang/String; = "vcalendar1.0"

.field public static final VERSION_VCALENDAR20:Ljava/lang/String; = "vcalendar2.0"


# instance fields
.field private mParser:Landroid/syncml/pim/VParser;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mParser:Landroid/syncml/pim/VParser;

    .line 35
    iput-object v0, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private judgeVersion(Ljava/lang/String;)V
    .registers 8
    .parameter "vcalStr"

    .prologue
    const-string v5, "vcalendar2.0"

    const-string v4, "vcalendar1.0"

    .line 98
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_2d

    .line 99
    const-string v2, "\nVERSION:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, versionIdx:I
    const-string v2, "vcalendar1.0"

    iput-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 103
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2d

    .line 104
    const-string v2, "\n"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, versionStr:Ljava/lang/String;
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2d

    .line 107
    const-string v2, "vcalendar2.0"

    iput-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 110
    .end local v0           #versionIdx:I
    .end local v1           #versionStr:Ljava/lang/String;
    :cond_2d
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar1.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 111
    new-instance v2, Landroid/syncml/pim/vcalendar/VCalParser_V10;

    invoke-direct {v2}, Landroid/syncml/pim/vcalendar/VCalParser_V10;-><init>()V

    iput-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mParser:Landroid/syncml/pim/VParser;

    .line 112
    :cond_3e
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar2.0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 113
    new-instance v2, Landroid/syncml/pim/vcalendar/VCalParser_V20;

    invoke-direct {v2}, Landroid/syncml/pim/vcalendar/VCalParser_V20;-><init>()V

    iput-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mParser:Landroid/syncml/pim/VParser;

    .line 114
    :cond_4f
    return-void
.end method

.method private verifyVCal(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "vcalStr"

    .prologue
    const-string v6, ":"

    const-string v4, "\n"

    const-string v5, "\r\n"

    .line 71
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser;->judgeVersion(Ljava/lang/String;)V

    .line 73
    const-string v3, "\r\n"

    const-string v3, "\n"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    const-string v3, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, strlist:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v1, replacedStr:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    array-length v3, v2

    if-ge v0, v3, :cond_6a

    .line 79
    aget-object v3, v2, v0

    const-string v4, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5e

    .line 80
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4c

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    const-string v4, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4c

    .line 81
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 83
    :cond_4c
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 85
    :cond_5e
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 87
    :cond_6a
    const-string v3, "VCalParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After verify:\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public parse(Ljava/lang/String;Landroid/syncml/pim/VDataBuilder;)Z
    .registers 8
    .parameter "vcalendarStr"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/syncml/pim/vcalendar/VCalException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser;->verifyVCal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    :try_start_4
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mParser:Landroid/syncml/pim/VParser;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "US-ASCII"

    invoke-virtual {v2, v3, v4, p2}, Landroid/syncml/pim/VParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/syncml/pim/VBuilder;)Z

    move-result v1

    .line 49
    .local v1, isSuccess:Z
    if-nez v1, :cond_45

    .line 50
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 52
    const-string v2, "VCalParser"

    const-string v3, "Parse failed for vCal 1.0 parser. Try to use 2.0 parser."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v2, "vcalendar2.0"

    iput-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/syncml/pim/vcalendar/VCalParser;->parse(Ljava/lang/String;Landroid/syncml/pim/VDataBuilder;)Z

    move-result v2

    .line 62
    :goto_30
    return v2

    .line 57
    :cond_31
    new-instance v2, Landroid/syncml/pim/vcalendar/VCalException;

    const-string v3, "parse failed.(even use 2.0 parser)"

    invoke-direct {v2, v3}, Landroid/syncml/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_39} :catch_39

    .line 59
    .end local v1           #isSuccess:Z
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 60
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Landroid/syncml/pim/vcalendar/VCalException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/syncml/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #isSuccess:Z
    :cond_45
    const/4 v2, 0x1

    goto :goto_30
.end method
