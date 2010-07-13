.class public Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;
.super Ljava/lang/Object;
.source "ProfileEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ProfileEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


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
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->number:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->label:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->name:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->data:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 30
    iput-wide v1, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->id:J

    .line 31
    iput-wide v1, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->date:J

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->kind:I

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->number:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->date:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->label:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->name:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->data:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->id:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->kind:I

    .line 60
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-wide v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    iget-wide v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget v0, p0, Lcom/lge/sns/profile/ui/ProfileEntryAdapter$Entry;->kind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    return-void
.end method
