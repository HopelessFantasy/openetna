.class public Lcom/android/contacts/ContactEntryAdapter$Entry;
.super Ljava/lang/Object;
.source "ContactEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final KIND_CONTACT:I = -0x1

.field public static final KIND_GROUPS:I = -0x4

.field public static final KIND_SEPARATOR:I = -0x3

.field public static final KIND_SMS:I = -0x2


# instance fields
.field public data:Ljava/lang/String;

.field public id:J

.field public kind:I

.field public label:Ljava/lang/String;

.field public maxLines:I

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->kind:I

    .line 219
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 204
    iget-wide v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    iget v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->kind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    return-void
.end method
