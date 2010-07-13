.class public Lcom/android/contacts/LogEntryAdapter$Entry;
.super Ljava/lang/Object;
.source "LogEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/LogEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public date:J

.field public id:J

.field public kind:I

.field public snippet:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->id:J

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->id:J

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->address:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->snippet:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->date:J

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->kind:I

    .line 132
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-object v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    iget v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->kind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->snippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-wide v0, p0, Lcom/android/contacts/LogEntryAdapter$Entry;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    return-void
.end method
