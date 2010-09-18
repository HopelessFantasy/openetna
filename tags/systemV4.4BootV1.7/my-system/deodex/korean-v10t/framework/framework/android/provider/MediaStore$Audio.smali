.class public final Landroid/provider/MediaStore$Audio;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Audio$Albums;,
        Landroid/provider/MediaStore$Audio$AlbumColumns;,
        Landroid/provider/MediaStore$Audio$Artists;,
        Landroid/provider/MediaStore$Audio$ArtistColumns;,
        Landroid/provider/MediaStore$Audio$Playlists;,
        Landroid/provider/MediaStore$Audio$PlaylistsColumns;,
        Landroid/provider/MediaStore$Audio$Genres;,
        Landroid/provider/MediaStore$Audio$GenresColumns;,
        Landroid/provider/MediaStore$Audio$Media;,
        Landroid/provider/MediaStore$Audio$AudioColumns;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1264
    return-void
.end method

.method public static keyFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "name"

    .prologue
    const/16 v8, 0x2e

    const-string v9, ""

    const-string v7, "\u0001"

    .line 760
    if-eqz p0, :cond_db

    .line 761
    const/4 v4, 0x0

    .line 762
    .local v4, sortfirst:Z
    const-string v5, "<unknown>"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 763
    const-string v5, "\u0001"

    move-object v5, v7

    .line 807
    .end local v4           #sortfirst:Z
    :goto_14
    return-object v5

    .line 767
    .restart local v4       #sortfirst:Z
    :cond_15
    const-string v5, "\u0001"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 768
    const/4 v4, 0x1

    .line 770
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 771
    const-string v5, "the "

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 772
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 774
    :cond_33
    const-string v5, "an "

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 775
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 777
    :cond_40
    const-string v5, "a "

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 778
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 780
    :cond_4d
    const-string v5, ", the"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, ",the"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, ", an"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, ",an"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, ", a"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, ",a"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 783
    :cond_7d
    const/4 v5, 0x0

    const/16 v6, 0x2c

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 785
    :cond_88
    const-string v5, "[\\[\\]\\(\\)\"\'.,?!]"

    const-string v6, ""

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 786
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d6

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 793
    .local v3, nl:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a7
    if-ge v1, v3, :cond_b6

    .line 794
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 793
    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    .line 797
    :cond_b6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 798
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, key:Ljava/lang/String;
    if-eqz v4, :cond_d3

    .line 800
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0001"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_d3
    move-object v5, v2

    .line 802
    goto/16 :goto_14

    .line 804
    .end local v0           #b:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #nl:I
    :cond_d6
    const-string v5, ""

    move-object v5, v9

    goto/16 :goto_14

    .line 807
    .end local v4           #sortfirst:Z
    :cond_db
    const/4 v5, 0x0

    goto/16 :goto_14
.end method
