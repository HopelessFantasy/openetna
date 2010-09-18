.class public Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;
.super Ljava/lang/Object;
.source "FriendEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/FriendEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final KIND_CONTACT:I = -0x1

.field public static final KIND_SMS:I = -0x2


# instance fields
.field public data:Ljava/lang/String;

.field public date:J

.field public id:J

.field public kind:I

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->id:J

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->number:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->date:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->label:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->name:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->data:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->id:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->kind:I

    .line 64
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-wide v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget-wide v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->kind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void
.end method
