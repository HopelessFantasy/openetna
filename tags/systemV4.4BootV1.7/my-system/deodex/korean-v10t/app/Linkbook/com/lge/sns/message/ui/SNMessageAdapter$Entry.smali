.class public Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;
.super Ljava/lang/Object;
.source "SNMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/SNMessageAdapter;
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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->id:J

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->number:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->date:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->label:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->name:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->data:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->uri:Landroid/net/Uri;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->id:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->kind:I

    .line 69
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-wide v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 53
    iget-wide v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget v0, p0, Lcom/lge/sns/message/ui/SNMessageAdapter$Entry;->kind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
