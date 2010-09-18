.class public Landroid/util/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLogTags$Description;
    }
.end annotation


# static fields
.field private static final COMMENT_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "EventLogTags"

.field private static final TAGS_FILE:Ljava/lang/String; = "/etc/event-log-tags"

.field private static final TAG_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/EventLogTags$Description;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/EventLogTags$Description;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "^\\s*(#.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/EventLogTags;->COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/EventLogTags;->TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/etc/event-log-tags"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-direct {p0, v0}, Landroid/util/EventLogTags;-><init>(Ljava/io/BufferedReader;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/BufferedReader;)V
    .registers 10
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "EventLogTags"

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/util/EventLogTags;->mNameMap:Ljava/util/HashMap;

    .line 54
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/util/EventLogTags;->mTagMap:Ljava/util/HashMap;

    .line 63
    :cond_13
    :goto_13
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_8b

    .line 64
    sget-object v5, Landroid/util/EventLogTags;->COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 65
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_13

    .line 67
    sget-object v5, Landroid/util/EventLogTags;->TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 70
    const/4 v5, 0x1

    :try_start_32
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 71
    .local v4, tag:I
    new-instance v0, Landroid/util/EventLogTags$Description;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/EventLogTags$Description;-><init>(ILjava/lang/String;)V

    .line 72
    .local v0, d:Landroid/util/EventLogTags$Description;
    iget-object v5, p0, Landroid/util/EventLogTags;->mNameMap:Ljava/util/HashMap;

    iget-object v6, v0, Landroid/util/EventLogTags$Description;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v5, p0, Landroid/util/EventLogTags;->mTagMap:Ljava/util/HashMap;

    iget v6, v0, Landroid/util/EventLogTags$Description;->mTag:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_56} :catch_57

    goto :goto_13

    .line 74
    .end local v0           #d:Landroid/util/EventLogTags$Description;
    .end local v4           #tag:I
    :catch_57
    move-exception v5

    move-object v1, v5

    .line 75
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "EventLogTags"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in event log tags entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 78
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_72
    const-string v5, "EventLogTags"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t parse event log tags entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 81
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_8b
    return-void
.end method


# virtual methods
.method public get(I)Landroid/util/EventLogTags$Description;
    .registers 4
    .parameter "tag"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/util/EventLogTags;->mTagMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/util/EventLogTags$Description;

    return-object p0
.end method

.method public get(Ljava/lang/String;)Landroid/util/EventLogTags$Description;
    .registers 3
    .parameter "name"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/util/EventLogTags;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/util/EventLogTags$Description;

    return-object p0
.end method
