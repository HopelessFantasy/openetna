.class public Lcom/lge/sns/feed/Feed;
.super Lcom/lge/sns/profile/SnsAuthorInfo;
.source "Feed.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FRIEND_REQUEST:Ljava/lang/String; = "FR"

.field public static final TYPE_MEDIA_COMMENT:Ljava/lang/String; = "MC"

.field public static final TYPE_PHOTO_POSTED:Ljava/lang/String; = "PP"

.field public static final TYPE_PROFILE_COMMENT:Ljava/lang/String; = "PC"

.field public static final TYPE_PROFILE_STATUS:Ljava/lang/String; = "PS"

.field public static final feedTypeList:[Ljava/lang/String;


# instance fields
.field private dataLink:Ljava/lang/String;

.field private dataUri:Ljava/lang/String;

.field private feedType:Ljava/lang/String;

.field private id:J

.field private opened:Ljava/util/Date;

.field private published:Ljava/util/Date;

.field private subDataLink:Ljava/lang/String;

.field private summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "PP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/feed/Feed;->feedTypeList:[Ljava/lang/String;

    .line 217
    new-instance v0, Lcom/lge/sns/feed/Feed$1;

    invoke-direct {v0}, Lcom/lge/sns/feed/Feed$1;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>()V

    .line 151
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "id"
    .parameter "feedType"
    .parameter "snsId"
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"
    .parameter "published"
    .parameter "opened"
    .parameter "dataLink"
    .parameter "subDataLink"
    .parameter "summary"
    .parameter "dataUri"

    .prologue
    .line 138
    invoke-direct {p0, p4, p5, p6, p7}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iput-wide p1, p0, Lcom/lge/sns/feed/Feed;->id:J

    .line 140
    iput-object p3, p0, Lcom/lge/sns/feed/Feed;->feedType:Ljava/lang/String;

    .line 141
    iput-object p8, p0, Lcom/lge/sns/feed/Feed;->published:Ljava/util/Date;

    .line 142
    iput-object p9, p0, Lcom/lge/sns/feed/Feed;->opened:Ljava/util/Date;

    .line 143
    iput-object p10, p0, Lcom/lge/sns/feed/Feed;->dataLink:Ljava/lang/String;

    .line 144
    iput-object p11, p0, Lcom/lge/sns/feed/Feed;->subDataLink:Ljava/lang/String;

    .line 145
    iput-object p12, p0, Lcom/lge/sns/feed/Feed;->summary:Ljava/lang/String;

    .line 146
    iput-object p13, p0, Lcom/lge/sns/feed/Feed;->dataUri:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/lge/sns/profile/SnsAuthorInfo;-><init>()V

    .line 154
    invoke-virtual {p0, p1}, Lcom/lge/sns/feed/Feed;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 193
    instance-of v2, p1, Lcom/lge/sns/feed/Feed;

    if-eqz v2, :cond_2a

    .line 194
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/feed/Feed;

    move-object v1, v0

    .line 195
    .local v1, f:Lcom/lge/sns/feed/Feed;
    iget-object v2, v1, Lcom/lge/sns/feed/Feed;->feedType:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/feed/Feed;->feedType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Lcom/lge/sns/feed/Feed;->published:Ljava/util/Date;

    iget-object v3, p0, Lcom/lge/sns/feed/Feed;->published:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Lcom/lge/sns/feed/Feed;->dataLink:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/feed/Feed;->dataLink:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    .line 197
    .end local v1           #f:Lcom/lge/sns/feed/Feed;
    :goto_27
    return v2

    .line 195
    .restart local v1       #f:Lcom/lge/sns/feed/Feed;
    :cond_28
    const/4 v2, 0x0

    goto :goto_27

    .line 197
    .end local v1           #f:Lcom/lge/sns/feed/Feed;
    :cond_2a
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_27
.end method

.method public getDataLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->dataLink:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->dataUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->feedType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/lge/sns/feed/Feed;->id:J

    return-wide v0
.end method

.method public getOpened()Ljava/util/Date;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->opened:Ljava/util/Date;

    return-object v0
.end method

.method public getPublished()Ljava/util/Date;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->published:Ljava/util/Date;

    return-object v0
.end method

.method public getSubDataLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->subDataLink:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/lge/sns/feed/Feed;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/feed/Feed;->feedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/feed/Feed;->dataLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .parameter "in"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/Feed;->setSnsId(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/Feed;->setUserId(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/Feed;->setUserName(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/sns/feed/Feed;->id:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/Feed;->feedType:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 165
    .local v0, value:J
    cmp-long v2, v0, v5

    if-eqz v2, :cond_5b

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_31
    iput-object v2, p0, Lcom/lge/sns/feed/Feed;->published:Ljava/util/Date;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 167
    cmp-long v2, v0, v5

    if-eqz v2, :cond_5d

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_40
    iput-object v2, p0, Lcom/lge/sns/feed/Feed;->opened:Ljava/util/Date;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/Feed;->dataLink:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/Feed;->subDataLink:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/Feed;->summary:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/feed/Feed;->dataUri:Ljava/lang/String;

    .line 172
    return-void

    :cond_5b
    move-object v2, v4

    .line 165
    goto :goto_31

    :cond_5d
    move-object v2, v4

    .line 167
    goto :goto_40
.end method

.method public setDataLink(Ljava/lang/String;)V
    .registers 2
    .parameter "dataLink"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lge/sns/feed/Feed;->dataLink:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setDataUri(Ljava/lang/String;)V
    .registers 2
    .parameter "dataUri"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/lge/sns/feed/Feed;->dataUri:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setFeedType(Ljava/lang/String;)V
    .registers 2
    .parameter "feedType"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lge/sns/feed/Feed;->feedType:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/lge/sns/feed/Feed;->id:J

    .line 58
    return-void
.end method

.method public setOpened(Ljava/util/Date;)V
    .registers 2
    .parameter "opened"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/sns/feed/Feed;->opened:Ljava/util/Date;

    .line 89
    return-void
.end method

.method public setPublished(Ljava/util/Date;)V
    .registers 2
    .parameter "published"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/sns/feed/Feed;->published:Ljava/util/Date;

    .line 79
    return-void
.end method

.method public setSubDataLink(Ljava/lang/String;)V
    .registers 2
    .parameter "subDataLink"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lge/sns/feed/Feed;->subDataLink:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .registers 2
    .parameter "summary"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lge/sns/feed/Feed;->summary:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0xa

    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/sns/feed/Feed;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "feedType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/Feed;->feedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "published="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/Feed;->published:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "opened="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/Feed;->opened:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "dataLink="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/Feed;->dataLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "subDataLink="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/Feed;->subDataLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "summary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/Feed;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "dataUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/Feed;->dataUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const-wide/16 v2, -0x1

    .line 175
    invoke-virtual {p0}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/lge/sns/feed/Feed;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-wide v0, p0, Lcom/lge/sns/feed/Feed;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->feedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->published:Ljava/util/Date;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->published:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_2b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->opened:Ljava/util/Date;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->opened:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->dataLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->subDataLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/lge/sns/feed/Feed;->dataUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return-void

    :cond_50
    move-wide v0, v2

    .line 180
    goto :goto_2b

    :cond_52
    move-wide v0, v2

    .line 181
    goto :goto_38
.end method
